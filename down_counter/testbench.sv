// Code your testbench here
// or browse Examples
module upcounter_testbench();
reg clk, rst;
  wire [3:0] out;

  down_counter dut(clk, rst,out );
  
  defparam dut.i=3;
  
initial  
clk=0;
always #5 clk=~clk;
  
initial begin
  @(negedge clk);
rst=0;
  @(negedge clk);
rst=1;
  #100 $finish();
end
  initial begin
    $monitor($time, "clk=%0d, rst=%0d,out=%0d",clk,rst,out);
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule 