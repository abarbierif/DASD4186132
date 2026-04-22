module fsm_show(
  input clk,
  input en,
  input load,
  input finish,
  output logic show
);

  typedef enum {INIT, RUNNING, SHOW0, SHOW1} state_t;
  state_t current_state = INIT, next_state;
  // contador de periodos de 'en' para medir 300 ms
  logic [1:0] count = 0;
  logic count_ready;
  localparam PERIOD = 3; // 3 x 100 ms = 300 ms

  assign count_ready = (count >= PERIOD -1); // activada en 300ms

  always_ff @(posedge clk) begin
    if(en) begin
      current_state <= next_state;

      // cuenta solo en SHOW0/SHOW1, reinicia al completar 300 ms
      if(count_ready) count <= 0;
      else if(current_state==SHOW0||current_state==SHOW1) begin
         count <= count + 1;
      end
    end
  end

  // INIT->RUNNING en load, RUNNING->SHOW0 al terminar, SHOW0<->SHOW1 cada 300 ms
  always_comb begin
    next_state = current_state;

    case(current_state)
      INIT:    if(load)      next_state = RUNNING;
      RUNNING: if(finish)    next_state = SHOW0;
      SHOW0: begin
        if(load)             next_state = RUNNING;
else if(count_ready) next_state = SHOW1;
      end
      SHOW1: begin
        if(load)             next_state = RUNNING;
else if(count_ready) next_state = SHOW0;
      end
    endcase
  end

  // SHOW0 apaga, SHOW1 enciende
  always_comb begin
    case(current_state)
      INIT :   show = 0;
      RUNNING: show = 1;
      SHOW0:   show = 0;
      SHOW1:   show = 1;
      default: show = 0;
    endcase
  end
 
endmodule