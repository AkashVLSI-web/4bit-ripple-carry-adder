module testbench();
	reg [3:0] a;
	reg [3:0] b;
	reg carry_in;
	wire [3:0] sum;
	wire carry_out;
	
	integer i,j;
	parameter LOOP_LIMIT = 8;
	
	fourbit_adder DUT (a,b,carry_in,sum,carry_out);
	
	initial begin 
		for (i = 0; i < LOOP_LIMIT ; i = i+1) begin
			for (j = 0; j < LOOP_LIMIT ; j = j + 1) begin
				a = i; 
				b = j; 
				carry_in = i%2;
				#10;
				$display("a=%0d, b=%0d, carry_in=%0d, sum=%0d, carry_out=%0d", 
				         a, b, carry_in, sum, carry_out);
			end
		end
		
		// End simulation
		$finish;
	end
endmodule