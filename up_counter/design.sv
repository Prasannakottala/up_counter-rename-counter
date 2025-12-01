// Code your design here
module up_counter#(parameter width=3,parameter i=6)(input clk, reset,output reg [width:0] counter_up);
  //parameter i=4;
   
  always @(posedge clk or negedge reset)
begin
  if(~reset)
 counter_up <= 4'd0;
  else if(counter_up>=i)
 counter_up <= 4'd0;
  else
 counter_up = counter_up+1'b1;
end
  
endmodule 