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

  input  stream_sync_in,
  output stream_sync_out,
  output sstore,
  output compare,
  input  word_count_done,
  output kmer_counter_enable,
  output match_counter_enable,
  input  kmer_count_done,
  input  tlast1,
  input  tlast2,
  output mstore,
  output stream_data_clear,
  output set_done,
  output sync_done,
  input done
);

  typedef enum {IDLE, SET_TREADY, WAIT_TVALID, STREAM_SYNC, COMPARE, CHECK_CWORD_DONE, CHECK_CKMER_DONE, SET_OUTPUT_STREAM, CHECK_TLAST, SET_DONE, SYNC_DONE, CLEAR_STREAM_REG} state_t;
  state_t current_state, next_state;

  logic tlast;
  assign tlast = tlast1 | tlast2;

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
          next_state = COMPARE;
        end
      end
      COMPARE: begin
        next_state = CHECK_CWORD_DONE;
      end
      CHECK_CWORD_DONE: begin
        if(word_count_done) begin
          next_state = CHECK_CKMER_DONE;
        end else begin
          next_state = CHECK_TLAST;
        end
      end
      CHECK_CKMER_DONE: begin
        if(kmer_count_done || tlast) begin
          next_state = SET_OUTPUT_STREAM;
        end else begin
          next_state = CHECK_TLAST;
        end
      end
      SET_OUTPUT_STREAM: begin
        if(m_axis_tready) begin
          next_state = CLEAR_STREAM_REG;
        end
      end
      CLEAR_STREAM_REG: begin
        next_state = CHECK_TLAST;
      end
      CHECK_TLAST: begin
        if(tlast) begin
          next_state = SET_DONE;
        end else begin
          next_state = SYNC_DONE;
        end
      end
      SET_DONE: begin
        next_state = SYNC_DONE;
      end
      SYNC_DONE: begin
        if(done) begin
          next_state = IDLE;
        end else begin
          next_state = SET_TREADY;
        end 
      end
    endcase
  end
  

  // output logic
  assign sstore                = (next_state    == STREAM_SYNC); // (current_state == WAIT_TVALID) & (s_axis_tvalid & (s_axis_tkeep == 4'hf));
  assign stream_sync_out       = (current_state == STREAM_SYNC);
  assign compare               = (current_state == COMPARE);
  assign mstore                = (current_state == SET_OUTPUT_STREAM);
  assign set_done              = (current_state == SET_DONE);
  assign sync_done             = (current_state == SYNC_DONE);
  assign kmer_counter_enable   = (next_state    == CHECK_CKMER_DONE);
  assign match_counter_enable  = (next_state    == CHECK_CKMER_DONE);
  assign stream_data_clear     = (current_state == CLEAR_STREAM_REG);

  always_ff @(posedge clk) begin
    if(rst) begin
      s_axis_tready <= 0;
      m_axis_tkeep  <= 0;
      m_axis_tvalid <= 0;
    end else begin
      if(current_state == SET_TREADY) begin
        s_axis_tready <= 1;
      end else if(next_state == STREAM_SYNC) begin
        s_axis_tready <= 0;
      end

      if(current_state != SET_OUTPUT_STREAM) begin
        m_axis_tkeep  <= 0;
        m_axis_tvalid <= 0;
        m_axis_tlast  <= 0;
      end else begin
        m_axis_tkeep  <= 4'hf;
        m_axis_tvalid <= 1;
        m_axis_tlast  <= tlast;
      end
    end
  end
  
endmodule 

