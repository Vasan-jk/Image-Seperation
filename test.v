`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:38:49 07/21/2024
// Design Name:   prefixAdder
// Module Name:   imagepro_v4.v
// Project Name:  testnx1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: prefixAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    11:45:37 07/21/24
// Design Name:    
// Module Name:    imagepro_v4
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module test;
parameter n=65536;
// Inputs
reg [7:0] a;
reg [7:0] b;
reg [16:0] data [0:n];
reg [16:0] data1 [0:n];
integer i,f1,f2;

// Outputs
wire [7:0] z1, z2;

// Instantiate the Unit Under Test (UUT)
main main_inst(.a(a),
.b(b),
.z1(z1),
.z2(z2));

initial begin

  $readmemh("image_textfilex.txt", data); end
  initial begin
  $readmemh("image_textfiley.txt", data1); end
  initial begin
  f1= $fopen("clk.txt");
  end
  initial begin
  f2= $fopen("clk2.txt","w");
  end
initial begin
// Initialize Inputs
for (i=0;i<(n+1);i=i+1)begin
a = data[i+1];
b = data1[i+1];



  $fclose(f1);
  $finish;            
end
 
      

begin 
$fdisplay(f1,"%d",z1);
$display("%d",z1);
end
//bin=1'b0;
// $fwrite(f1,"%d\n",z1);
 $fwrite(f2,"%d\n",z2);
// Wait 100 ns for global reset to finish
#1;
      end  
// Add stimulus here    
endmodule