// Registra el modo de operación (ADC o TEST) al inicio de cada adquisición.
// Cambios de modo solo se permiten cuando ready=1 para evitar cambios mid-adquisición.
module mode_fsm(
  input  clk,
  input  rst,
  input  start,
  input  mode,   // 0: ADC real, 1: test (LUT)
  input  ready,  // de samples_fsm; habilita cambio de modo
  output test    // activo cuando el modo actual es TEST
);
  typedef enum {IDLE, ADC, TEST} state_t;
  state_t current_state, next_state;

  always_ff @(posedge clk) begin
    if(rst) current_state <= IDLE;
    else    current_state <= next_state;
  end

  // transiciones solo cuando ready=1 (entre adquisiciones)
  always_comb begin
    next_state = current_state;
    case(current_state)
      IDLE: begin
        if(ready) begin
          if(mode) begin
            next_state = TEST;
          end else begin
            next_state = ADC;
          end
        end
      end
      ADC: begin
        if(ready) begin
          if(mode) begin
            next_state = TEST;
          end
        end
      end
      TEST: begin
        if(ready) begin
          if(!mode) begin
            next_state = ADC;
          end
        end
      end
    endcase
  end

  assign test = (current_state == TEST);
endmodule