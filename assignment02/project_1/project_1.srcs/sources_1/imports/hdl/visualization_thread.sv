// Selecciona y despliega la métrica activa en el visor de 7 segmentos.
// El resultado se escala ×1000 para mostrar en volts con punto decimal
// en el tercer display. Los resultados se mantienen visibles
// hasta el inicio de una nueva adquisición.
module visualization_thread(
  input        clk,
  input        rst,
  input  [13:0] sqrt, mean, max, min,
  input  [1:0] metric_sel,
  input        metrics_ready,
  input        start_acquisition,
  output logic [7:0] seg, an,
  output logic dp
);
  logic metrics_ready_reg,     metrics_ready_rising;
  logic start_acquisition_reg, start_acquisition_rising;

  always @(posedge clk) begin
    metrics_ready_reg     <= metrics_ready;
    start_acquisition_reg <= start_acquisition;
  end
  assign metrics_ready_rising     = ~metrics_ready_reg     & metrics_ready;
  assign start_acquisition_rising = ~start_acquisition_reg & start_acquisition;

  // display_fsm habilita la salida al terminar procesamiento y la apaga al iniciar adquisición
  logic display;
  display_fsm fsm_display(
    .clk(clk), .rst(rst),
    .metrics_ready(metrics_ready_rising),
    .start_acquisition(start_acquisition_rising),
    .display(display)
  );

  // selección de métrica a mostrar
  logic [13:0] metric;
  mux4 #(.WIDTH(14)) metric_mux(
    .in0(max), .in1(min), .in2(mean), .in3(sqrt),
    .sel(metric_sel), .out(metric)
  );

  // escalado ×1000: U10.0 × U2.12 = U12.12; parte entera es resultado en mV
  logic [23:0] metric_scaled;
  assign metric_scaled = (10'd1000 * metric) >> 12;

  logic [11:0] metric_scaled_reg;
  always_ff @(posedge clk) begin
    if (rst) metric_scaled_reg <= 0;
    else     metric_scaled_reg <= display ? metric_scaled[11:0] : 12'b0;
  end

  binto7seg bin27seg(.clk(clk), .result(metric_scaled_reg), .seg(seg), .an(an));

  // punto decimal en tercer display (an==8'b11110111) para mostrar X.XXX V
  always_ff @(posedge clk) begin
    if (rst) dp <= 1;
    else     dp <= (display && an == 8'b11110111) ? 0 : 1;
  end

endmodule
