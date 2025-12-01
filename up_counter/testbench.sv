// Code your testbench here
// or browse Examples
module upcounter_testbench();
reg clk, reset;
  wire [5:0] counter_up;

  up_counter #(5,20)dut(clk, reset, counter_up);
  
 // defparam dut.i=3;
  
initial  
clk=0;
always #5 clk=~clk;
  
initial begin
  @(negedge clk);
reset=0;
  @(negedge clk);
reset=1;
  #500 $finish();
end
  initial begin
    $monitor($time, "clk=%0d, reset=%0d,counter=%0d",clk,reset,counter_up);
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule 