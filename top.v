module top();
parameter lungime = 4;
reg clk;
reg s_in;
reg [lungime-1:0]p_in;
wire [lungime-1:0]p_out;
reg shift_n;
reg load_n;
always #5 clk<=~clk;
initial begin
clk = 0;
shift_n = 1;
load_n = 1;
s_in = 1;
p_in = 4'b0;
#10;
load_n = 0;
#10;
load_n = 1;
p_in = 4'b1;
#10;
shift_n = 0;
s_in = 0;
#40;
s_in = 1;
#20;
$stop;
end
Shift_reg SR(
.clk(clk),
.shift_n(shift_n),
.load_n(load_n),
.s_in(s_in),
.p_in(p_in),
.p_out(p_out)
);
endmodule
