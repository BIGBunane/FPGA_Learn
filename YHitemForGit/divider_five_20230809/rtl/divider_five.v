module  divider_five
(
    input       wire    sys_clk     ,
    input       wire    sys_rst_n   ,
    
    output      reg    clk_flag     
);

reg      [2:0]       cnt;
// reg                 clk_1;
// reg                 clk_2;

always@ (posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt <= 3'b0;
    else    if(cnt == 3'd4)
        cnt <= 3'b0;
    else
        cnt <= cnt + 3'd1;
        
always@ (posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        clk_flag <= 1'b0;
    else    if(cnt == 3'd3)
        clk_flag <=1'b1;
    else
        clk_flag <=1'b0;

/* always@ (posedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        clk_1   <=  1'b0;
    else    if(cnt == 3'd2)
        clk_1   <=  1'b1;
    else    if(cnt  ==  3'd4)
        clk_1   <=  1'b0;
    else
        clk_1   <=  clk_1   ;

always@ (negedge sys_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        clk_2    <=  1'b0;
    else    if(cnt  ==  3'd2)
        clk_2    <=  1'b1;
    else    if(cnt  ==  3'd4)
        clk_2    <=  1'b0;
    else
        clk_2   <=  clk_2; */

// assign  clk_out =   (clk_1 | clk_2);

endmodule

 