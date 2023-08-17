`timescale  1ns/1ns
module  tb_beep();

reg     sys_clk;
reg     sys_rst_n;

wire    beep;

initial
    begin
        sys_clk = 1'b1;
        sys_rst_n   <= 1'b0;
        #100
        sys_rst_n   <= 1'b1;
    end
    
always  #10 sys_clk = ~sys_clk;

beep
#(
    .CNT_MAX(25'd24_999),
    .DO     (18'd190),
    .RE     (18'd170),
    .MI     (18'd151),
    .FA     (18'd143),
    .SO     (18'd127),
    .LA     (18'd113),
    .XI     (18'd101)
)beep_inst
(
   . sys_clk  (sys_clk),
   . sys_rst_n(sys_rst_n),
   
   .beep      (beep)

);

endmodule