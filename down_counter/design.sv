// Code your design here
module down_counter(clk,rst,out);
  input clk,rst;
  output reg [3:0] out;
  parameter i=5;
always @(posedge clk or negedge rst) begin;
    if(out<i) 
      out <= ~4'd0;
    else if (out)
    out <= out-1'b1;
    else  if(~rst)
    out = 4'd0;
  end
endmodule
    