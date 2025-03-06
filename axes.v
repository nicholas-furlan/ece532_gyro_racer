`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2025 04:08:29 PM
// Design Name: 
// Module Name: axes
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module axes(
    input clk,
    input [15:0] angular_rate_x,
    input [15:0] angular_rate_y,
    input [15:0] angular_rate_z,
    output [15:0] x_angle,
    output [15:0] y_angle,
    output [15:0] z_angle
    );
    
    //hard coded calibration and min and max vals for testing only
	reg[7:0] threshold = 100;
	reg[15:0] neg_thresh = 'b1111111110011100; //this is -100 in 2's complement
	reg[15:0] ad_x, ad_y, ad_z;
	
	reg[63:0] integrate_x, integrate_y, integrate_z;
	initial begin
	   integrate_x <= 0;
	   integrate_y <= 0;
	   integrate_z <= 0;
	end
	
	//integrate x
    always@(posedge clk)
    begin
    if(angular_rate_x > threshold && angular_rate_x < neg_thresh)
        begin
            ad_x <=angular_rate_x;//after calibration, remember to adjust for it
        end
    else
        begin
            ad_x<=0 ; 
        end
        integrate_x <= integrate_x + ad_x;
    end
    
    always@(posedge clk)
    begin
    if(angular_rate_y > threshold && angular_rate_y < neg_thresh)
        begin
            ad_y <=angular_rate_y;//after calibration, remember to adjust for it
        end
    else
        begin
            ad_y<= 0; 
        end
        integrate_y <= integrate_y + ad_y;
    end
    
    reg[1:0] counter=0;
    always@(posedge clk)
    begin
    if(counter==0)
        begin
        if(angular_rate_z > threshold && angular_rate_z < neg_thresh) //test to see if this fixes it
            begin
                ad_z <=angular_rate_z;//after calibration, remember to adjust for it
            end
        else
            begin
                ad_z<= 0; 
            end
            integrate_z <= integrate_z + {{48{ad_z[15]}},ad_z[15:0]};
        end
        
        counter<=counter+1;
    end
    
    assign x_angle = integrate_x>>28;
    assign y_angle = integrate_y>>28;
    assign z_angle = integrate_z>>28;
endmodule
