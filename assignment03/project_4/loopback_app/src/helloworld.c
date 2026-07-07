#include <stdio.h>
#include <xil_io.h>
#include <xil_types.h>
#include <xtimer_config.h>
#include "xaxidma.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "dma_controller.h"
#include "ff.h"
#include "xiltimer.h"

#define KMER_SIZE_BYTES   31
#define PADDING_BYTES     1
#define KMER_TOTAL_BYTES  (KMER_SIZE_BYTES + PADDING_BYTES) // 32 bytes (8 palabras de 32-bit)
#define NUM_KMERS_1       135365
#define NUM_KMERS_2       135262
#define BUFFER_SIZE_1     (NUM_KMERS_1 * KMER_TOTAL_BYTES)
#define BUFFER_SIZE_2     (NUM_KMERS_2 * KMER_TOTAL_BYTES)
#define BUFFER_SIZE_3     4227 //  8 words as minimum

XAxiDma AxiDma0;
XAxiDma AxiDma1;

FATFS fatfs;
FIL fil0, fil1;

u8 TxBuffer0[BUFFER_SIZE_1] __attribute__ ((aligned(32)));
u8 TxBuffer1[BUFFER_SIZE_2] __attribute__ ((aligned(32)));
u32 RxBuffer[BUFFER_SIZE_3]  __attribute__ ((aligned(32)));
u32 histogram[NUM_KMERS_2 + 1] = {0};

int init_sd_and_read_files() {
    FRESULT res;
    UINT bytesRead;

    // 1. Montar SD
    res = f_mount(&fatfs, "0:/", 1);
    if (res != FR_OK) return XST_FAILURE;

    // 2. Abrir archivos
    if (f_open(&fil0, "31mers_5.txt", FA_READ) != FR_OK) return XST_FAILURE;
    if (f_open(&fil1, "31mers_6.txt", FA_READ) != FR_OK) return XST_FAILURE;

    // 3. Leer y aplicar Padding
    for (int i = 0; i < NUM_KMERS_1; i++) {
        // Leer 31 bytes del archivo 0
        f_read(&fil0, &TxBuffer0[i * KMER_TOTAL_BYTES], KMER_SIZE_BYTES, &bytesRead);
        char dummy;
        f_read(&fil0, &dummy, 1, &bytesRead);
        TxBuffer0[(i * KMER_TOTAL_BYTES) + 31] = 0x00; // Padding
    }
    for (int i = 0; i < NUM_KMERS_2; i++) {
        // Leer 31 bytes del archivo 1
        f_read(&fil1, &TxBuffer1[i * KMER_TOTAL_BYTES], KMER_SIZE_BYTES, &bytesRead);
        char dummy;
        f_read(&fil1, &dummy,1, &bytesRead);
        TxBuffer1[(i * KMER_TOTAL_BYTES) + 31] = 0x00; // Padding
    }

    xil_printf("Archivos leidos.\n");
    f_close(&fil0);
    f_close(&fil1);
    return XST_SUCCESS;
}

u32 software_baseline() {
    u32 sw_matches = 0;
    
    // compare kmer by kmer up to the length of the shorter stream
    for (int i = 0; i < NUM_KMERS_2; i++) {
        int kmer_offset = i * KMER_TOTAL_BYTES;
        int is_match = 1;
        
        // check all 31 characters of the current K-mer
        for (int j = 0; j < KMER_SIZE_BYTES; j++) {
            if (TxBuffer0[kmer_offset + j] != TxBuffer1[kmer_offset + j]) {
                is_match = 0;
                break; // mismatch found, drop out early
            }
        }
        
        if (is_match) {
            sw_matches++;
        }
    }
    return sw_matches;
}

void compute_histogram(){

    // clean histogram
    for(u32 i = 0; i <= NUM_KMERS_2; i++){
        histogram[i] = 0;
    }

    u32 count = 0;

    for (u32 i = 0; i < NUM_KMERS_2; i++) {
        u32 word = RxBuffer[i / 32];
        u32 bit  = (word >> (i % 32)) & 0x1;

        if (bit) {
            count++;
        } else {
            histogram[count]++;   // counts run==0 too, i.e. "no-match" gaps
            count = 0;
        }
    }
    histogram[count]++; // close out a count that reaches the last k-mer
}

int main()
{
    init_platform();
    u32 hw_matches, status = 0;

    // read SD files
    if(init_sd_and_read_files() != XST_SUCCESS){
        xil_printf("ERROR: failed to read SD files.\r\n");
        return -1;
    }

    // init DMAs
    XAxiDma_Config *CfgPtr; //DMAs configuration pointer
	int Status;

    // DMA0
	CfgPtr = XAxiDma_LookupConfig(XPAR_AXI_DMA_0_BASEADDR);
	if (!CfgPtr) {
		xil_printf("No config found for %d\r\n", XPAR_AXI_DMA_0_BASEADDR);
		return XST_FAILURE;
	}

	Status = XAxiDma_CfgInitialize(&AxiDma0, CfgPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	if(XAxiDma_HasSg(&AxiDma0)){
		xil_printf("Device configured as SG mode \r\n");
		return XST_FAILURE;
	}

	XAxiDma_IntrDisable(&AxiDma0, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&AxiDma0, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

    // DMA1
	CfgPtr = XAxiDma_LookupConfig(XPAR_AXI_DMA_1_BASEADDR);
	if (!CfgPtr) {
		xil_printf("No config found for %d\r\n", XPAR_AXI_DMA_1_BASEADDR);
		return XST_FAILURE;
	}

	Status = XAxiDma_CfgInitialize(&AxiDma1, CfgPtr);
	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	if(XAxiDma_HasSg(&AxiDma1)){
		xil_printf("Device configured as SG mode \r\n");
		return XST_FAILURE;
	}

	XAxiDma_IntrDisable(&AxiDma1, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&AxiDma1, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

    xil_printf("DMAs configured...\r\n");

    // Rx Buffer
    //u8 *RxBuffer;
	//RxBuffer = malloc(BUFFER_SIZE_3);

    // Initialize memory to all zeros
    for(int i=0; i<BUFFER_SIZE_3; i++){
        RxBuffer[i] = 0x00;
    }

    /*
    for(int i=0; i<5; i++){
        xil_printf("RxBuffer[%d] = %X\r\n", i, RxBuffer[i]);
    }
    */

	Xil_DCacheFlushRange((UINTPTR)TxBuffer0, BUFFER_SIZE_1);
    Xil_DCacheFlushRange((UINTPTR)TxBuffer1, BUFFER_SIZE_2);
	Xil_DCacheFlushRange((UINTPTR)RxBuffer,  BUFFER_SIZE_3*sizeof(u32));

	XAxiDma_Reset(&AxiDma0);
    XAxiDma_Reset(&AxiDma1);

    // software baseline
    XTime start_time, end_time;   
    XTime_GetTime(&start_time);
    u32 sw_matches = software_baseline();
    XTime_GetTime(&end_time);

    double sw_time = (double)(start_time - end_time)/COUNTS_PER_SECOND;

    // hardware processing
    XTime_GetTime(&start_time);

	// Setup & kick off S2MM channel first
	Status = XAxiDma_S2MMtransfer(&AxiDma0,(UINTPTR)RxBuffer,BUFFER_SIZE_3*sizeof(u32));
	if (Status != XST_SUCCESS){
		xil_printf("XAXIDMA_DEVICE_TO_DMA transfer failed...\r\n");
		return XST_FAILURE;
	}

	Status = XAxiDma_MM2Stransfer(&AxiDma0,(UINTPTR)TxBuffer0, BUFFER_SIZE_1);
	if (Status != XST_SUCCESS){
		xil_printf("XAXIDMA_DMA_TO_DEVICE transfer failed...\r\n");
		return XST_FAILURE;
	}

	Status = XAxiDma_MM2Stransfer(&AxiDma1,(UINTPTR)TxBuffer1, BUFFER_SIZE_2);
	if (Status != XST_SUCCESS){
		xil_printf("XAXIDMA_DMA_TO_DEVICE transfer failed...\r\n");
		return XST_FAILURE;
	}
    XTime_GetTime(&end_time);
    double hw_time_kickoff = (double)(start_time - end_time)/COUNTS_PER_SECOND;

    XTime_GetTime(&start_time);
    while(status == 0)
    {
        status = Xil_In32(XPAR_AXIREGS_0_BASEADDR + 4);
    }

    XTime_GetTime(&end_time);
    double hw_time_execution = (double)(start_time - end_time)/COUNTS_PER_SECOND;

    XTime_GetTime(&start_time);
	while(
        XAxiDma_Busy(&AxiDma0,XAXIDMA_DEVICE_TO_DMA)
        ||XAxiDma_Busy(&AxiDma0,XAXIDMA_DMA_TO_DEVICE)
        ||XAxiDma_Busy(&AxiDma1,XAXIDMA_DMA_TO_DEVICE)){
		if (XAxiDma_Busy(&AxiDma0,XAXIDMA_DEVICE_TO_DMA) == TRUE){
			xil_printf("DMA0 S2MM channel is busy...\r\n");
		}
		if (XAxiDma_Busy(&AxiDma0,XAXIDMA_DMA_TO_DEVICE)){
			xil_printf("DMA0 MM2S channel is busy...\r\n");
		}
		if (XAxiDma_Busy(&AxiDma1,XAXIDMA_DMA_TO_DEVICE)){
			xil_printf("DMA1 MM2S channel is busy...\r\n");
		}
	}
    XTime_GetTime(&end_time);
    double hw_time_tail = (double)(start_time - end_time)/COUNTS_PER_SECOND;

    /*
    XTime t;
    for(int i=0;i<20;i++) {
        XTime_GetTime(&t);
        printf("%llu\n", (unsigned long long)t);
    }
    */


    /*
	for(int i=0; i<BUFFER_SIZE_3; i++) {
		xil_printf("Received data packet %d: 0h%08X\r\n", i, (unsigned int)RxBuffer[i]);
	}
    */

    hw_matches = Xil_In32(XPAR_AXIREGS_0_BASEADDR + 0); // 8 transfers per row, a total of 80 for the prototype with 10 mers
    status     = Xil_In32(XPAR_AXIREGS_0_BASEADDR + 4);

    xil_printf("hw_matches: %d\r\n", hw_matches);
    xil_printf("status: %d\r\n", status);
    printf("sw_time: %lf ms, hw_time_kickoff: %lf ms, hw_time_execution: %lf ms, hw_time_tail: %lf ms", sw_time*1000, hw_time_kickoff*1000, hw_time_execution*1000, hw_time_tail*1000);


    // checking if sw and hw are equals
    if(hw_matches == sw_matches){
        xil_printf("PASS\r\n");
    }
    else{
        xil_printf("FAIL SW=%lu HW=%lu\r\n", (unsigned long)sw_matches, (unsigned long)hw_matches);
    }

	XAxiDma_Reset(&AxiDma0);
    XAxiDma_Reset(&AxiDma1);

    // histogram computation, we just print different than 0 entries
    compute_histogram();
    xil_printf("Histogram of consecutive matches\r\n");    
    for(u32 i =  0; i <= NUM_KMERS_2; i++){
        if(histogram[i] && i != 0){
            xil_printf("%d -> %d\r\n", (unsigned long)i, (unsigned long)histogram[i]);
        }
    }

    cleanup_platform();
    return 0;
}

