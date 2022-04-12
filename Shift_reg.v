module Shift_reg(
input clk,
input shift_n,
input load_n,
input s_in,
input [4-1:0] p_in,
output [4-1:0] p_out
);

reg [4-1:0]p_out_intern;
always @ (posedge clk )
begin
 if (~load_n) p_out_intern=p_in;
 else begin p_out_intern ={ p_out_intern[4-2:0],s_in }; end
 
end
 assign p_out = p_out_intern;
 
 
 
endmodule
