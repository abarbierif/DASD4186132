`timescale 1ns / 1ps

module axis_comparator_sv(
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
  output logic [31:0] done,
  output logic [31:0] matches_count
);

  logic sync1, sync2;
  logic store_input_stream1, store_input_stream2;
  logic [31:0] tdata1, tdata2;
  logic tlast1, tlast2, tlast;
  logic set_output_stream, set_output_stream_reg, set_output_stream_rising;
  logic clear_output_stream;
  logic [31:0] output_stream_data;
 
  logic comparator_result; 
  logic [3:0] counter8_count;
  logic [5:0] counter32_count;
  logic counter8_done, counter32_done;
  logic compare_enable;
  logic [7:0] comparator_register;
  logic counter8_enable, counter32_enable;
  logic [7:0] decoder8_select;
  logic [31:0] decoder32_select;
  logic match;
  logic finished;

  slave_master_axis_fsm fsm_slave_master_axis(
    .clk(clk),
    .rst(!reset),
    .s_axis_tkeep(s_axis_tkeep1),
    .s_axis_tready(s_axis_tready1),
    .s_axis_tvalid(s_axis_tvalid1),

    .m_axis_tkeep(m_axis_tkeep),
    .m_axis_tready(m_axis_tready),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tlast(m_axis_tlast),

    .stream_sync_in(sync2),
    .counter8_done(counter8_done),
    .counter32_done(counter32_done),
    .finished(finished),
    .stream_sync_out(sync1),
    .store_input_stream(store_input_stream1),
    .compare_enable(compare_enable),
    .counter8_enable(counter8_enable),
    .counter32_enable(counter32_enable),
    .set_output_stream(set_output_stream),
    .clear_output_stream(clear_output_stream),
    .tlast(tlast)
  );
  
  slave_axis_fsm fsm_slave_axis(
    .clk(clk),
    .rst(!reset),
    .s_axis_tkeep(s_axis_tkeep2),
    .s_axis_tready(s_axis_tready2),
    .s_axis_tvalid(s_axis_tvalid2),
    .stream_sync_in(sync1),
    .finished(finished),
    .stream_sync_out(sync2),
    .store_input_stream(store_input_stream2)
  );
    
  register #(.WIDTH(32)) tdata1_reg(
    .clk(clk), 
    .rst(!reset), 
    .en(store_input_stream1), 
    .clear(1'b0), 
    .sel({32{1'b1}}), 
    .data_in(s_axis_tdata1), 
    .data_out(tdata1)
  );
  
  register #(.WIDTH(1))  tlast1_reg(
    .clk(clk),
    .rst(!reset), 
    .en(store_input_stream1), 
    .clear(1'b0), 
    .sel(1'b1), 
    .data_in(s_axis_tlast1), 
    .data_out(tlast1)
  );
  
  register #(.WIDTH(32)) tdata2_reg(
    .clk(clk), 
    .rst(!reset), 
    .en(store_input_stream2), 
    .clear(1'b0), 
    .sel({32{1'b1}}), 
    .data_in(s_axis_tdata2), 
    .data_out(tdata2)
  );
  
  register #(.WIDTH(1))  tlast2_reg(
    .clk(clk), 
    .rst(!reset), 
    .en(store_input_stream2), 
    .clear(1'b0), 
    .sel(1'b1), 
    .data_in(s_axis_tlast2), 
    .data_out(tlast2)
  );

  comparator comparator_inst(
    .data_in0(tdata1),
    .data_in1(tdata2),
    .eq(comparator_result)
  );

  counter #(.WIDTH(4), .MAX_COUNT(8)) counter8_inst(
    .clk(clk),
    .rst(!reset),
    .count_en(counter8_enable),
    .count(counter8_count)
  );

  decoder #(.WIDTH(3)) decoder8_inst(
    .data_in(counter8_count),
    .data_out(decoder8_select)
  );

  register #(.WIDTH(8)) comparator_register_inst(
    .clk(clk),
    .rst(!reset),
    .en(compare_enable),
    .clear(counter32_enable),
    .sel(decoder8_select),
    .data_in({8{comparator_result}}),
    .data_out(comparator_register)
  );

  counter #(.WIDTH(6), .MAX_COUNT(32)) counter32_inst(
    .clk(clk),
    .rst(!reset),
    .count_en(counter32_enable),
    .count(counter32_count)
  );

  decoder #(.WIDTH(5)) decoder32_inst(
    .data_in(counter32_count),
    .data_out(decoder32_select)
  );
  
  register #(.WIDTH(32)) m_axis_tdata_reg(
    .clk(clk), 
    .rst(!reset), 
    .en(counter32_enable), 
    .clear(clear_output_stream), 
    .sel(decoder32_select), 
    .data_in({32{match}}), 
    .data_out(output_stream_data)
  );

  assign tlast = tlast1 | tlast2;
  assign match = &comparator_register;
  assign counter8_done = (counter8_count == 4'd8);
  assign counter32_done = (counter32_count == 6'd32);
  assign m_axis_tdata = output_stream_data;
  
  always_ff @(posedge clk) begin
    if(!reset) begin
      set_output_stream_reg <= 0;
    end else begin
      set_output_stream_reg <= set_output_stream;
    end
  end
  
  assign set_output_stream_rising = ~set_output_stream_reg && set_output_stream;

  always_ff @(posedge clk) begin
    if(!reset) begin
      matches_count <= 0;
    end else if(counter8_enable) begin
      matches_count <= matches_count + match;
    end
  end
  
  always_ff @(posedge clk) begin
    if(!reset) begin
      done <= 0;
    end else if(tlast && set_output_stream_rising) begin
      done <= {31'b0,tlast};
    end
  end

  always_ff @(posedge clk) begin
    if(!reset) begin
      finished <= 0;
    end else if(tlast && set_output_stream_rising) begin
      finished <= 1;
    end
  end
    
endmodule
