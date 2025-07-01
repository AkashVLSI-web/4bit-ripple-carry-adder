module fulladder_structural(
	input a,
	input b,
	input cin,
	output sum,
	output cout
	);
	
	wire sum1;
	wire and1;
	wire and2;
	
	
	halfadder_structural HA1( 
	     .a(a),
		 .b(b),
		 .sum(sum1),
		 .cout(and1)
		 );
		 
	
	halfadder_structural HA2 (
		 .a(sum1),
		 .b(cin),
		 .sum(sum),
		 .cout(and2)
		 );
		 
	or (cout,and1,and2);
	
endmodule