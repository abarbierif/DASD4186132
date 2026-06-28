module slave_axis_fsm(
  input clk,
  input rst,
  input [3:0]  s_axis_tkeep,
  input        s_axis_tvalid,
  output logic s_axis_tready,
  
  input  stream_sync_in,
  output stream_sync_out,
  output store,
  input  sync_done_in,
  input done
);

  typedef enum {IDLE, SET_TREADY, WAIT_TVALID, STREAM_SYNC, SYNC_DONE, CHECK_DONE} state_t;
  state_t current_state, next_state;

  always_ff @(posedge clk) begin
    if(rst) current_state <= IDLE;
    else    current_state <= next_state;
  end

  always_comb begin
    next_state = current_state;
    case(current_state)
      IDLE: begin
        if(!done) begin
          next_state = SET_TREADY;
        end
      end
      SET_TREADY: begin
        next_state = WAIT_TVALID;
      end
      WAIT_TVALID: begin
        if(s_axis_tvalid & (s_axis_tkeep == 4'hf)) begin
          next_state = STREAM_SYNC;
        end 
      end
      STREAM_SYNC: begin
        if(stream_sync_in) begin
          next_state = SYNC_DONE;
        end
      end
      SYNC_DONE: begin
        if(sync_done_in) begin
          next_state = CHECK_DONE;
        end
      end
      CHECK_DONE: begin
        if(done) begin
          next_state = IDLE;
        end else begin
          next_state = SET_TREADY;
        end
      end
    endcase
  end
 
  // output logic
  assign store               = (next_state    == STREAM_SYNC);
  assign stream_sync_out     = (current_state == STREAM_SYNC);

  // s_axis_tready
  always_ff @(posedge clk) begin
    if(rst) begin
      s_axis_tready <= 0;
    end else begin
      if(current_state == SET_TREADY) begin
        s_axis_tready <= 1;
      end else if(next_state == STREAM_SYNC) begin
        s_axis_tready <= 0;
      end
    end
  end
  
endmodule 
