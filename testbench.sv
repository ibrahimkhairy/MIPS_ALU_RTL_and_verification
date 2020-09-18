module testbench;
logic [31:0] a,b;
logic [2:0]    f;
logic [31:0]  y,yexpected;
logic zero,zeroexpected;

logic [31:0] vectornum;
logic [25:0] testvectors[20:0];
logic clk, reset;

alu DUT(
	.a(a), 
	.b(b), 
	.f(f), 
	.y(y),
	.zero(zero) 
	);

initial
begin
$readmemh("testbench.tv", testvectors);

{f, a, b, yexpected, zeroexpected} = testvectors[0];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[1];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[2];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[3];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[4];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[5];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[6];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[7];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[8];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[9];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[10];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[11];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[12];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[13];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[14];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[15];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[16];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[17];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[18];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[19];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
 #5;

 {f, a, b, yexpected, zeroexpected} = testvectors[20];
	if(y == yexpected) 
		$display("Correct");
	else
		$display("Error");
		
$finish;
end
endmodule