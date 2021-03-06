module CLA_adder4bit_tb;

reg Cin;
reg [3:0] A, B;
wire [3:0] S;
wire Cout;

CLA_adder4bit uut (.Cin(Cin), .A(A), .B(B), .S(S), .Cout(Cout));

initial
begin
	#10;
	Cin = 1'b0;
	A = 4'b1101;
	B = 4'b1011;
	#10;
	A = 4'b0100;
	B = 4'b0010;
	#10;
	A = 4'b0011;
	B = 4'b0011;
	#10;
	A = 4'b1111;
	B = 4'b1111;
	#10;
	$stop;
end
endmodule
