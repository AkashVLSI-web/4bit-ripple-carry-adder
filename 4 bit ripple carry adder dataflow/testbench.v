module testbench ();
	reg [3:0] a;
	reg [3:0] b;
	reg carry_in;
	wire [3:0] sum;
	wire carry_out;
	
	four_bit_ripplecarry_adder DUT (a,b,carry_in,sum,carry_out);
	
	initial begin
		$monitor ("a = %0d,b =%0d,carry_in =%0d,sum = %0d,carry_out =%0d",a,b,carry_in,sum,carry_out);
	end
	
	initial begin
		#10; a = 4; b = 6;carry_in = 1;
		#10; a = 4; b = 9;carry_in = 0;
		#10; a = 7; b = 6;carry_in = 1;
		#10; a = 3; b = 8;carry_in = 0;
		#10; a = 6; b = 4;carry_in = 1;
	end
	
endmodule