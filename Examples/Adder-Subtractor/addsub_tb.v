module addsub_tb;

reg [7:0] dataa, datab;
reg add_sub, clk;
wire [8:0] result;

addsub uut(.dataa(dataa), .datab(datab), .add_sub(add_sub), .clk(clk), .result(result));

initial
begin
	clk = 0;
	add_sub = 1'b1; //sum is 208
	dataa = 8'b11000011; //195
	datab = 8'b00001101; //13
	#10;
	add_sub = 1'b0; //sub is 182
	#10; $stop;
end

always
#5 clk = ~clk;
endmodule

	