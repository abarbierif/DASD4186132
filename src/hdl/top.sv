module top(
  input clk, 
  input pause,
  input load,
  input [15:0] in,
  output [6:0] seg,
  output [3:0] an
);

  logic clk_enable;
  
  logic pause_signal;
  logic pause_reg;

  logic [27:0] seven_seg;

  logic show;

  // salidas BCD de cada digito
  logic [3:0] bcd_out_fsm_100ms, bcd_out_fsm_1s, bcd_out_fsm_10s, bcd_out_fsm_1min;
  
  // enables en cadena: cada digito se habilita solo cuando el inferior llega a cero
  logic en_fsm_1s, en_fsm_10s, en_fsm_1min;
  logic inc_100ms, inc_1s, inc_10s;
  
  assign en_fsm_1s   = clk_enable & inc_100ms;
  assign en_fsm_10s  = en_fsm_1s  & inc_1s;
  assign en_fsm_1min = en_fsm_10s & inc_10s;

  // finish: activo cuando todos los digitos son cero
  logic finish_fsm_100ms, finish_fsm_1s, finish_fsm_10s, finish_fsm_1min;
  logic finish;
  assign finish_fsm_100ms = (bcd_out_fsm_100ms == 0);
  assign finish_fsm_1s    = (bcd_out_fsm_1s == 0);
  assign finish_fsm_10s   = (bcd_out_fsm_10s == 0);
  assign finish_fsm_1min  = (bcd_out_fsm_1min == 0);

  assign finish = finish_fsm_100ms & finish_fsm_1s & finish_fsm_10s & finish_fsm_1min;


  clk_div clk_div(
    .clk(clk),
    .clk_enable(clk_enable)
  );
  
  // driver de pausa y FSM de pausa
  button_driver pausa(
    .clk(clk),
    .button(pause),
    .enable(pause_signal)
  );

  fsm_pause inst_fsm_pause(
    .clk(clk),
    .pause_in(pause_signal),
    .pause_out(pause_reg)
  );

  // FSMs de cuenta: cada instancia maneja un digito BCD
  fsm_9to0 inst_fsm_100ms(
    .clk(clk),
    .en(clk_enable),
    .load(load),
    .bcd_in(in[3:0]),
    .pause(pause_reg),
    .finish(finish),
    .bcd_out(bcd_out_fsm_100ms),
    .inc(inc_100ms)
  );

  fsm_9to0 inst_fsm_1s(
    .clk(clk),
    .en(en_fsm_1s),
    .load(load),
    .bcd_in(in[7:4]),
    .pause(pause_reg),
    .finish(finish),
    .bcd_out(bcd_out_fsm_1s),
    .inc(inc_1s)
  );

  fsm_5to0 inst_fsm_10s(
    .clk(clk),
    .en(en_fsm_10s),
    .load(load),
    .bcd_in(in[11:8]),
    .pause(pause_reg),
    .finish(finish),
    .bcd_out(bcd_out_fsm_10s),
    .inc(inc_10s)
  );
  
  fsm_9to0 inst_fsm_1min(
    .clk(clk),
    .en(en_fsm_1min),
    .load(load),
    .bcd_in(in[15:12]),
    .pause(pause_reg), 
    .finish(finish),
    .bcd_out(bcd_out_fsm_1min),
    .inc()
  );

  fsm_show inst_fsm_show(
    .clk(clk),
    .en(clk_enable),
    .load(load),
    .finish(finish),
    .show(show)
  );

  bcd27seg_4digits inst_bcd27seg_4digits(
    .bcd_in0(bcd_out_fsm_1min),
    .bcd_in1(bcd_out_fsm_10s),
    .bcd_in2(bcd_out_fsm_1s),
    .bcd_in3(bcd_out_fsm_100ms),
    .show(show),
    .seven_seg(seven_seg)
  );

  displayDriver disp(
    .clk(clk),
    .inSeg(seven_seg),
    .anodes(an),
    .outSeg(seg)
  );

endmodule