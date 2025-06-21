module testbench();
	reg [3:0] a;
	reg [3:0] b;
	reg cin ;
	wire [3:0] sum;
	wire cout;
	
	RCA_4bit DUT(a,b,cin,sum,cout);
	
	initial begin 
		$monitor ("a =%0d, b =%0d, cin =%0d,sum =%0d,cout =%0d",a,b,cin,sum,cout);
	end
	
	initial begin
		#10; a = 4; b = 5; cin = 0;
		#10; a = 4'b1001;b = 4'b1110;cin = 1;
		#10; a = 5; b = 8;cin = 0;
		#10; a = 8; b = 7; cin = 1;
		#10; $finish;
	end
	
endmodule