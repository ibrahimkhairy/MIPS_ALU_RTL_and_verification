module alu(input logic [31:0] a, b,
input logic [2:0] f,
output logic [31:0] y,
output logic zero);

wire logic[31:0] B_par;
wire logic[31:0] or_product;
wire logic[31:0] and_product;
wire logic[31:0] S;
wire logic[31:0] S_extended;
 logic[31:0] BB;
wire logic C_out;

assign B_par= ~ b;

always_comb begin

case (f[2])
0 : BB[31:0]=b[31:0];
1 : BB[31:0]=B_par[31:0];
endcase
end

assign and_product= a & BB;
assign or_product = a | BB;
assign {C_out, S} = a + BB + f[2];
assign S_extended = {28'h0000000,3'b000,S[31]};



 

always_comb begin
case (f[1:0])
2'b00 : y<= and_product;
2'b01 : y<= or_product;
2'b10 : y<= S;
2'b11 : y<= S_extended;
endcase

zero <= (y == 32'h00000000) ? 1 : 0;


end
endmodule
