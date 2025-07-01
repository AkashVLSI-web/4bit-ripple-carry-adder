module halfadder_structural (
	input a,
	input b,
	output cout,
	output sum
	);
	
	xor XOR1 (sum,a,b);
	and AND1 (cout,a,b);
endmodule