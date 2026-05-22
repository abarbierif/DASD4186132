module rms_fsm(
  input clk,
  input rst,
  input start,
  input last_sample,
  output mult_en,
  output acc_en,
  output div0_en,
  output div1_en,
  output xk_sel,
  output norm0_en, norm1_en,
  output nr0_en, nr1_en, nr2_en, nr3_en, nr4_en,
  output ready
);

  typedef enum {IDLE, MULT, ACC, DIV0, DIV1, NORM0, NORM1, NR0, NR1, NR2, NR3, NR4} state_t;
  state_t current_state, next_state;
  
  localparam NR_ITER = 5;
  logic [2:0] nr_counter;
  logic nr_ready;

  always_ff @(posedge clk) begin
    if(rst) current_state <= IDLE;
    else    current_state <= next_state;
  end

  always_comb begin
    next_state = current_state;
    case(current_state)
      IDLE: begin
        if(start) begin
          next_state = MULT;
	      end
      end
      MULT: begin
	      next_state = ACC;
      end
      ACC: begin
        if(last_sample) begin
          next_state = DIV0;
	      end else begin
	        next_state = IDLE;
	      end
      end
      DIV0: begin
        next_state = DIV1;
      end
      DIV1: begin
        next_state = NORM0;
      end
      NORM0: begin
	      next_state = NORM1;
      end
      NORM1: begin
	      next_state = NR0;
      end
      NR0: begin
	      next_state = NR1;
      end
      NR1: begin
	      next_state = NR2;
      end
      NR2: begin
	      next_state = NR3;
      end
      NR3: begin
        if(nr_ready) begin
          next_state = NR4;
        end else begin
	        next_state = NR0;
        end
      end
      NR4: begin
	      next_state = IDLE;
      end
    endcase
  end

  always_ff @(posedge clk) begin
    if(rst) begin
      nr_counter <= 0;
    end else begin
      if(nr_counter >= NR_ITER) begin
        nr_counter <= 0;
      end else begin
        if(current_state == NR2) begin
          nr_counter <= nr_counter + 1;
        end
      end
    end
  end

  assign nr_ready = (nr_counter >= NR_ITER);

  assign mult_en = (current_state == MULT);
  assign acc_en  = (current_state == ACC); 
  assign ready   = (current_state == IDLE);
  assign div0_en = (current_state == DIV0);
  assign div1_en = (current_state == DIV1);
  assign xk_sel  = !((current_state == NR0) && (nr_counter == 0));
  assign norm0_en = (current_state == NORM0);
  assign norm1_en = (current_state == NORM1);
  assign nr0_en  = (current_state == NR0);  
  assign nr1_en  = (current_state == NR1);  
  assign nr2_en  = (current_state == NR2);  
  assign nr3_en  = (current_state == NR3);  
  assign nr4_en  = (current_state == NR4);  

endmodule
