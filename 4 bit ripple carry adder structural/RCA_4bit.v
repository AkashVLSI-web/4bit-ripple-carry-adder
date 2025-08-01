module RCA_4bit (
	input [3:0] a,
	input [3:0] b,
	input cin,
	output [3:0] sum,
	output cout
	);
	
	wire [2:0] c;
	
	fulladder_structural FA1 (
		.a(a[0]),
		.b(b[0]),
		.cin(cin),
		.sum(sum[0]),
		.cout(c[0])
		);
		
		fulladder_structural FA2 (
		.a(a[1]),
		.b(b[1]),
		.cin(c[0]),
		.sum(sum[1]),
		.cout(c[1])
		);
		
		fulladder_structural FA3 (
		.a(a[2]),
		.b(b[2]),
		.cin(c[1]),
		.sum(sum[2]),
		.cout(c[2])
		);
		
		fulladder_structural FA4 (
		.a(a[3]),
		.b(b[3]),
		.cin(c[2]),
		.sum(sum[3]),
		.cout(cout)
		);
endmodule