module slave_master_axis_fsm(
  input clk,
  input rst,
  //input [31:0]      s_axis_tdata,
  input [3:0]       s_axis_tkeep,
  //input             s_axis_tlast,
  output reg        s_axis_tready,
  input             s_axis_tvalid,
  //output reg [31:0] m_axis_tdata,
  output reg [3:0]  m_axis_tkeep,
  output reg        m_axis_tlast,
  input             m_axis_tready,
  output reg        m_axis_tvalid,
  
  input  tlast,
  input  stream_sync_in,
  output stream_sync_out,
  output store_input_stream,
  output set_output_stream,
  output reg clear_output_stream
);

  typedef enum {IDLE, SET_TREADY, WAIT_TVALID, STREAM_SYNC, SET_OUTPUT_STREAM, CHECK_TLAST} state_t;
  state_t current_state, next_state;

  logic data_valid;
  assign data_valid = s_axis_tvalid & (s_axis_tkeep == 4'hf);

  always_ff @(posedge clk) begin
    if(rst) current_state <= IDLE;
    else    current_state <= next_state;
  end

  always_comb begin
    next_state = current_state;
    case(current_state)
      IDLE: begin
          next_state = SET_TREADY;
      end
      SET_TREADY: begin
        next_state = WAIT_TVALID;
      end
      WAIT_TVALID: begin
        if(data_valid) begin
          next_state = STREAM_SYNC;
        end 
      end
      STREAM_SYNC: begin
        if(stream_sync_in) begin
          next_state = SET_OUTPUT_STREAM;
        end
      end
      SET_OUTPUT_STREAM: begin
        if(m_axis_tready) begin
          next_state = CHECK_TLAST;
        end
      end
      CHECK_TLAST: begin
        if(tlast) begin
          next_state = IDLE;
        end else if(m_axis_tready) begin
          next_state = SET_TREADY;
        end
      end
    endcase
  end
  

  // output logic
  assign store_input_stream  = ((current_state == WAIT_TVALID) & data_valid);
  assign stream_sync_out     = (current_state == STREAM_SYNC);
  assign set_output_stream   = (current_state == STREAM_SYNC) & stream_sync_in;
  assign clear_output_stream = !(((current_state == STREAM_SYNC) & stream_sync_in) || (current_state == SET_OUTPUT_STREAM) & !m_axis_tready);

  always_ff @(posedge clk) begin
    if(rst) begin
      s_axis_tready <= 0;
      m_axis_tkeep  <= 0;
      m_axis_tvalid <= 0;
    end else begin
      if(current_state == SET_TREADY) begin
        s_axis_tready <= 1;
      end else if((current_state == WAIT_TVALID) & data_valid) begin
        s_axis_tready <= 0;
      end

      if((current_state == STREAM_SYNC) & stream_sync_in) begin
        m_axis_tkeep  <= 4'hf;
        m_axis_tvalid <= 1;
        m_axis_tlast  <= tlast;
      end else if((current_state == SET_OUTPUT_STREAM) & m_axis_tready) begin
        m_axis_tkeep  <= 0;
        m_axis_tvalid <= 0;
        m_axis_tlast  <= 0;
      end
    end
  end
  
endmodule 

