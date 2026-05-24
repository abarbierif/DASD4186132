module acquisition_thread(
  input clk,
  input rst,
  input start,
  input mode,
  input [9:0] n,
  // input data from ad1_thread
  input [11:0] data0,
  input [11:0] data1,
  input ad1_driver_ready,
  // processing ready
  input processing_ready,
  // outputs for processing_thread
  output logic [9:0] n_samples,
  output logic last_sample,
  output logic start_processing,
  output [13:0] data_q2_12,
  // output for ad1_thread
  output logic start_ad1_driver,
  // output for top
  output ready
);
  
  logic [10:0] m_samples;

  logic ad1_driver_ready_reg, ad1_driver_ready_rising;
  logic samples_fsm_ready_reg, samples_fsm_ready_rising;
  logic scale_pipe_fsm_ready_reg, scale_pipe_fsm_ready_rising;
  logic samples_fsm_ready, scale_pipe_fsm_ready;

  logic [31:0] data0_scaled;
  logic [13:0] data0_q2_12;
  logic test;
  logic [13:0] test_lut_data_out;
  logic [10:0] test_lut_addr_count;
  logic [9:0]  test_lut_addr;
  logic [11:0] data0_reg, data1_reg;
  
  // detector of rising edges
  always_ff @(posedge clk) begin
    ad1_driver_ready_reg <= ad1_driver_ready;
    samples_fsm_ready_reg <= samples_fsm_ready;
    scale_pipe_fsm_ready_reg <= scale_pipe_fsm_ready;
  end

  assign ad1_driver_ready_rising = ~ad1_driver_ready_reg & ad1_driver_ready;
  assign samples_fsm_ready_rising = ~samples_fsm_ready_reg & samples_fsm_ready;
  assign scale_pipe_fsm_ready_rising = ~scale_pipe_fsm_ready_reg & scale_pipe_fsm_ready;
  
  mode_fsm fsm_mode(
    .clk(clk),
    .rst(rst),
    .start(start),
    .mode(mode),
    .ready(samples_fsm_ready),
    .test(test)
  );

  samples_fsm fsm_samples(
    .clk(clk),
    .rst(rst),
    .start(start),
    .n_samples(m_samples),
    .ad1_driver_ready_rising(ad1_driver_ready_rising),
    .ready(samples_fsm_ready)
  );

  scale_pipe_fsm fsm_scale_pipe(
    .clk(clk),
    .rst(rst),
    .ad1_driver_ready_rising(ad1_driver_ready_rising),
    .ready(scale_pipe_fsm_ready)
  );

  test_lut lut_test(
    .clk(clk),
    .rst(rst),
    .r_en(processing_ready),
    .addr(test_lut_addr),
    .data_out(test_lut_data_out)
  );
  
  always_ff @(posedge clk) begin
    if(rst) begin
      data0_reg <= 0;
      data1_reg <= 0;
    end else begin
      if(ad1_driver_ready_rising) begin
	      data0_reg <= data0;
	      data1_reg <= data1;
      end
      
      if(processing_ready) begin
        data0_q2_12 <= data0_scaled;
      end
    end
  end

  always_ff @(posedge clk) begin
    if(rst) begin
      test_lut_addr_count <= 0;
    end else begin
      if(samples_fsm_ready) begin
        test_lut_addr_count <= 0;
      end
      if(ad1_driver_ready_rising) begin
        test_lut_addr_count <= test_lut_addr_count + 1;
      end
    end
  end

  assign test_lut_addr = test_lut_addr_count - 1;


  // samples logic
  always @(posedge clk) begin
    if(rst) begin
      n_samples <= 0;
      m_samples <= 0;
    end else begin
      if(samples_fsm_ready) begin
        n_samples <= n;
	    if(n >= 10'd116) begin
          m_samples <= 11'd1024;
	    end else begin
	      m_samples <= n + 11'd8;
        end
      end
    end
  end
  
  assign data0_scaled = (data0_reg * 20'b00000000001101001101) >> 8; //Q12.0 * Q0.20 = Q12.20
  assign start_ad1_driver = (!samples_fsm_ready && ad1_driver_ready) || (samples_fsm_ready && start);
  assign ready = samples_fsm_ready;
  assign last_sample = samples_fsm_ready && scale_pipe_fsm_ready_rising; 
  assign start_processing = scale_pipe_fsm_ready_rising;
  assign data_q2_12 = test ? test_lut_data_out : data0_q2_12;

endmodule
