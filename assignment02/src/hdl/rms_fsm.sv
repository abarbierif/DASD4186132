module rms_fsm(
  input clk,
  input rst,
  input start,
  input last_sample,
  output mult_en,
  output acc_en,
  output div0_en,
  output div1_en,
  output div2_en,
  output ready
);

  typedef enum {IDLE, MULT, ACC, DIV0, DIV1, DIV2, NR} state_t;
  state_t current_state, next_state;

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
        next_state = DIV2;
      end
      DIV2: begin
        next_state = NR;
      end
      NR: begin
	next_state = IDLE;
      end
    endcase
  end

  assign mult_en = (current_state == MULT);
  assign acc_en  = (current_state == ACC); 
  assign ready   = (current_state == IDLE);
  assign div0_en = (current_state == DIV0);
  assign div1_en = (current_state == DIV1);
  assign div2_en = (current_state == DIV2);

endmodule
