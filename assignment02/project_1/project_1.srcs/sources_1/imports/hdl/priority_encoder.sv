// Codificador de prioridad: detecta el leading one de data_in[17:0]
// y entrega los 6 bits siguientes como índice para norm_lut,
// y el exponente k_exp para el ajuste de la aproximación inicial.
// Nota: casos con leading one en bits menores a 12 no están cubiertos.
module priority_encoder(
  input  [17:0] data_in,
  output logic  [5:0] data_out,
  output logic  [2:0] k_exp
);
  always @(*) begin
    casez(data_in)
      {1'b1, {17{1'b?}}}:    begin data_out = data_in[16:11]; k_exp = 3'd4; end
      {2'b01, {16{1'b?}}}:   begin data_out = data_in[15:10]; k_exp = 3'd3; end
      {3'b001, {15{1'b?}}}:  begin data_out = data_in[14:9];  k_exp = 3'd2; end
      {4'b0001, {14{1'b?}}}: begin data_out = data_in[13:8];  k_exp = 3'd1; end
      default:               begin data_out = data_in[12:7];  k_exp = 0;    end
    endcase
  end
endmodule
