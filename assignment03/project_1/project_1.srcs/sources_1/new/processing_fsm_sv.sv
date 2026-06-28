`timescale 1ns / 1ps

module processing_fsm_sv(
  input clk,
  input reset,
  input [31:0] s_axis_tdata1,
  input [3:0] s_axis_tkeep1,
  input s_axis_tlast1,
  output logic s_axis_tready1,
  input s_axis_tvalid1,
  input [31:0] s_axis_tdata2,
  input [3:0] s_axis_tkeep2,
  input s_axis_tlast2,
  output logic s_axis_tready2,
  input s_axis_tvalid2,
  output logic [31:0] m_axis_tdata,
  output logic [3:0] m_axis_tkeep,
  output logic m_axis_tlast,
  input m_axis_tready,
  output logic m_axis_tvalid,
  output logic done,
  output logic [31:0] matches_count
);

  logic stream1_sync, stream2_sync;
  logic stream1_store, stream2_store;
  logic compare;
  logic [31:0] stream1_data, stream2_data;
  logic stream1_last, stream2_last;
  logic sync_done;
  logic mstore;
  logic set_done;
  logic done_reg;
  logic eq;

  logic word_count_done, kmer_count_done;

  logic [31:0] output_stream_data;
  
  logic [2:0] word_count;
  logic [4:0] kmer_count;
  logic [7:0] word_sel;
  logic [31:0] kmer_sel;

  logic [7:0] word_match;
  logic kmer_match;

  logic kmer_counter_enable;
  logic match_counter_enable;

  logic stream_data_clear;
  
  slave_master_axis_fsm fsm_slave_master_axis(
    .clk(clk),
    .rst(!reset),
    .s_axis_tkeep(s_axis_tkeep1),
    .s_axis_tready(s_axis_tready1),
    .s_axis_tvalid(s_axis_tvalid1),
    .tlast1(stream1_last),
    .tlast2(stream2_last),
    .m_axis_tkeep(m_axis_tkeep),
    .m_axis_tready(m_axis_tready),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tlast(m_axis_tlast),
    .stream_sync_in(stream2_sync),
    .stream_sync_out(stream1_sync),
    .sstore(stream1_store),
    .compare(compare),
    .word_count_done(word_count_done),
    .kmer_counter_enable(kmer_counter_enable),
    .match_counter_enable(match_counter_enable),
    .kmer_count_done(kmer_count_done),
    .mstore(mstore),
    .stream_data_clear(stream_data_clear),
    .set_done(set_done),
    .sync_done(sync_done),
    .done(done_reg)
  );
  
  slave_axis_fsm fsm_slave_axis(
    .clk(clk),
    .rst(!reset),
    .s_axis_tkeep(s_axis_tkeep2),
    .s_axis_tready(s_axis_tready2),
    .s_axis_tvalid(s_axis_tvalid2),
    .stream_sync_in(stream1_sync),
    .stream_sync_out(stream2_sync),
    .store(stream2_store),
    .sync_done_in(sync_done),
    .done(done_reg)
  );
    
  register #(.WIDTH(32)) tdata1_reg(.clk(clk), .rst(!reset), .en(stream1_store), .clear(1'b0), .sel({32{1'b1}}), .data_in(s_axis_tdata1), .data_out(stream1_data));
  register #(.WIDTH(1))  tlast1_reg(.clk(clk), .rst(!reset), .en(stream1_store), .clear(1'b0), .sel(1'b1), .data_in(s_axis_tlast1), .data_out(stream1_last));
  
  register #(.WIDTH(32)) tdata2_reg(.clk(clk), .rst(!reset), .en(stream2_store), .clear(1'b0), .sel({32{1'b1}}), .data_in(s_axis_tdata2), .data_out(stream2_data));
  register #(.WIDTH(1))  tlast2_reg(.clk(clk), .rst(!reset), .en(stream2_store), .clear(1'b0), .sel(1'b1), .data_in(s_axis_tlast2), .data_out(stream2_last));
  
  comparator eq_comp(
    .data_in0(stream1_data),
    .data_in1(stream2_data),
    .eq(eq)
  );

  counter #(.WIDTH(4), .MAX_COUNT(8)) word_counter(
    .clk(clk),
    .rst(!reset),
    .count_en(compare),
    .count(word_count),
    .count_done(word_count_done)
  );

  decoder #(.WIDTH(3)) onehot_word(
    .data_in(word_count),
    .data_out(word_sel)
  );

  register #(.WIDTH(8)) comp_reg(.clk(clk), .rst(!reset), .en(compare), .clear(1'b0), .sel(word_sel), .data_in({8{eq}}), .data_out(word_match));

  assign kmer_match = &word_match;
  
  counter #(.WIDTH(6), .MAX_COUNT(32)) kmer_counter(
    .clk(clk),
    .rst(!reset),
    .count_en(kmer_counter_enable),
    .count(kmer_count),
    .count_done(kmer_count_done)
  );
  
  decoder #(.WIDTH(5)) onehot_kmer(
    .data_in(kmer_count),
    .data_out(kmer_sel)
  );


  register #(.WIDTH(32)) m_axis_tdata_reg(.clk(clk), .rst(!reset), .en(word_count_done), .clear(stream_data_clear), .sel(kmer_sel), .data_in({32{kmer_match}}), .data_out(output_stream_data));
  

  // done and matches count
  always_ff @(posedge clk) begin
    if(!reset) begin
      done_reg      <= 0;
      matches_count <= 0; 
      m_axis_tdata  <= 0;
    end else begin
      if(set_done) begin
        done_reg <= 1;
      end

      if(mstore) begin
        m_axis_tdata <= output_stream_data;
      end else begin
        m_axis_tdata <= 0;
      end

      if(match_counter_enable) begin
        matches_count <= matches_count + kmer_match;
      end
    end
  end
  
  assign done = done_reg;
   
endmodule
