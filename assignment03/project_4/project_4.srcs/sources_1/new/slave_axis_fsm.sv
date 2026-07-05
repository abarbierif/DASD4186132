module slave_axis_fsm(
  input clk,
  input rst,
  input [3:0]  s_axis_tkeep,
  input        s_axis_tvalid,
  output logic s_axis_tready,
  
  input  stream_sync_in,
  input  finished,
  output stream_sync_out,
  output store_input_stream
);

  typedef enum {IDLE, SET_TREADY, WAIT_TVALID, STREAM_SYNC} state_t;
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
        if(stream_sync_in || finished) begin
          next_state = SET_TREADY;
        end
      end
    endcase
  end
 
  // output logic
  assign store_input_stream = ((current_state == WAIT_TVALID) && data_valid);
  assign stream_sync_out    = (current_state == STREAM_SYNC);

  // s_axis_tready
  always_ff @(posedge clk) begin
    if(rst) begin
      s_axis_tready <= 0;
    end else begin
      if(current_state == SET_TREADY) begin
        s_axis_tready <= 1;
      end else if((current_state == WAIT_TVALID) && data_valid) begin
        s_axis_tready <= 0;
      end
    end
  end
  
endmodule 
