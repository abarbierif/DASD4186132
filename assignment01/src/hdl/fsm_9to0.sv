module fsm_9to0(
  input clk,
  input en,
  input load,
  input [3:0] bcd_in,
  input pause,
  input finish,
  output logic [3:0] bcd_out,
  output inc
);

  typedef enum {S0, S1, S2, S3, S4, S5, S6, S7, S8, S9} state_t;
  state_t current_state = S0, next_state;

  // registro de estado y logica load
  always_ff @(posedge clk) begin
    if(load & finish) begin
      // carga el valor inicial, solo permitido cuando finish=1
      if(bcd_in <= 4'b1001) begin
        case(bcd_in)
          4'b0000: current_state <= S0;
          4'b0001: current_state <= S1;
          4'b0010: current_state <= S2;
          4'b0011: current_state <= S3;
          4'b0100: current_state <= S4;
          4'b0101: current_state <= S5;
          4'b0110: current_state <= S6;
          4'b0111: current_state <= S7;
          4'b1000: current_state <= S8;
          4'b1001: current_state <= S9;
        endcase
      end else     current_state <= S9; // satura a 9 cuando bcd_in > 9
    end
    else if(en) current_state <= next_state;
  end

  // logica next_state
  // decrementa en cada pulso de 'en', se detiene con pause o finish
  always_comb begin
    next_state = current_state;
    case(current_state)
      S0: begin
        if(~pause & ~finish) next_state = S9; // acarreo: regresa a 9
	else if(finish)      next_state = S0; // se mantiene en 0 al terminar
      end
      S1: if(~pause) next_state = S0;
      S2: if(~pause) next_state = S1;
      S3: if(~pause) next_state = S2;
      S4: if(~pause) next_state = S3;
      S5: if(~pause) next_state = S4;
      S6: if(~pause) next_state = S5;
      S7: if(~pause) next_state = S6;
      S8: if(~pause) next_state = S7;
      S9: if(~pause) next_state = S8;
    endcase
  end

  // logica de salidas
  always_comb begin
    unique case(current_state)
      S0: bcd_out = 0;
      S1: bcd_out = 1;
      S2: bcd_out = 2;
      S3: bcd_out = 3;
      S4: bcd_out = 4;
      S5: bcd_out = 5;
      S6: bcd_out = 6;
      S7: bcd_out = 7;
      S8: bcd_out = 8;
      S9: bcd_out = 9;
    endcase
  end
  
  assign inc = (current_state == S0); // acarreo activo al pasar por 0

endmodule