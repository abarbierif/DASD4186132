// Controla la adquisición de muestras desde el AD1.
// En modo normal lee data0 del driver; en modo test lee desde test_lut
// a la misma tasa que el ADC. Convierte la muestra a Q2.12 y señaliza
// start_processing y last_sample al completar M = N+8 muestras.
module acquisition_thread(
  input        clk,
  input        rst,
  input        start,
  input        mode,        // 0: ADC, 1: test (LUT)
  input  [9:0] n,
  input  [11:0] data0, data1,
  input        ad1_driver_ready,
  input        processing_ready,
  output logic [9:0] n_samples,    // N (sin los 8 extra)
  output logic       last_sample,  // activo en la última muestra
  output logic       start_processing,
  output       [13:0] data_q2_12,  // muestra escalada en formato U2.12
  output logic       start_ad1_driver,
  output             ready
);
  logic [10:0] m_samples; // M = N+8, saturado en 1024

  // registros para detección de flancos de subida
  logic ad1_driver_ready_reg,    ad1_driver_ready_rising;
  logic samples_fsm_ready_reg,   samples_fsm_ready_rising;
  logic scale_pipe_fsm_ready_reg, scale_pipe_fsm_ready_rising;
  logic samples_fsm_ready, scale_pipe_fsm_ready;

  always_ff @(posedge clk) begin
    ad1_driver_ready_reg      <= ad1_driver_ready;
    samples_fsm_ready_reg     <= samples_fsm_ready;
    scale_pipe_fsm_ready_reg  <= scale_pipe_fsm_ready;
  end
  assign ad1_driver_ready_rising     = ~ad1_driver_ready_reg    & ad1_driver_ready;
  assign samples_fsm_ready_rising    = ~samples_fsm_ready_reg   & samples_fsm_ready;
  assign scale_pipe_fsm_ready_rising = ~scale_pipe_fsm_ready_reg & scale_pipe_fsm_ready;

  logic [31:0] data0_scaled;
  logic [13:0] data0_q2_12;
  logic        test;
  logic [13:0] test_lut_data_out;
  logic [10:0] test_lut_addr_count;
  logic  [9:0] test_lut_addr;
  logic [11:0] data0_reg, data1_reg;

  mode_fsm fsm_mode(
    .clk(clk), .rst(rst), .start(start), .mode(mode),
    .ready(samples_fsm_ready), .test(test)
  );
  samples_fsm fsm_samples(
    .clk(clk), .rst(rst), .start(start),
    .n_samples(m_samples), .ad1_driver_ready_rising(ad1_driver_ready_rising),
    .ready(samples_fsm_ready)
  );
  // scale_pipe_fsm absorbe la latencia del pipeline de escalado;
  // scale_pipe_fsm_ready_rising indica que la última muestra escalada está lista
  scale_pipe_fsm fsm_scale_pipe(
    .clk(clk), .rst(rst),
    .ad1_driver_ready_rising(ad1_driver_ready_rising),
    .ready(scale_pipe_fsm_ready)
  );
  // LUT con valores de prueba en U2.12 (0 a 3.3 V)
  test_lut lut_test(
    .clk(clk), .rst(rst), .r_en(processing_ready),
    .addr(test_lut_addr), .data_out(test_lut_data_out)
  );

  // captura muestra al flanco de ready del driver
  always_ff @(posedge clk) begin
    if (rst) begin
      data0_reg <= 0; data1_reg <= 0;
    end else begin
      if (ad1_driver_ready_rising) begin
        data0_reg <= data0;
        data1_reg <= data1;
      end
      if (processing_ready) data0_q2_12 <= data0_scaled;
    end
  end

  // contador de dirección para test_lut; se reinicia al completar adquisición
  always_ff @(posedge clk) begin
    if (rst) begin
      test_lut_addr_count <= 0;
    end else begin
      if (samples_fsm_ready)        test_lut_addr_count <= 0;
      if (ad1_driver_ready_rising)  test_lut_addr_count <= test_lut_addr_count + 1;
    end
  end
  assign test_lut_addr = test_lut_addr_count - 1;

  // captura y satura n en el flanco de ready de samples_fsm
  always @(posedge clk) begin
    if (rst) begin
      n_samples <= 0; m_samples <= 0;
    end else begin
      if (samples_fsm_ready) begin
        if (n > 10'd1016) begin
          m_samples <= 11'd1024; n_samples <= 10'd1016; // saturación en 1024
        end else begin
          m_samples <= n + 10'd8; n_samples <= n;
        end
      end
    end
  end

  // escalado: ADC[11:0] × (3.3/4095) en U0.20, resultado Q2.12
  assign data0_scaled     = (data0_reg * 20'b00000000001101001101) >> 8;
  assign start_ad1_driver = (!samples_fsm_ready && ad1_driver_ready) || (samples_fsm_ready && start);
  assign ready            = samples_fsm_ready;
  // last_sample y start_processing se activan juntos en la última muestra escalada
  assign last_sample      = samples_fsm_ready && scale_pipe_fsm_ready_rising;
  assign start_processing = scale_pipe_fsm_ready_rising;
  // selección de fuente de datos según modo
  assign data_q2_12       = test ? test_lut_data_out : data0_q2_12;

endmodule