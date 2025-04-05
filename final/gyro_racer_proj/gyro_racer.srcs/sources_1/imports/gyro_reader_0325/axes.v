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
    input angle_reset,
    input system_reset,
    input [15:0] angular_rate_x,
    input [15:0] angular_rate_y,
    input [15:0] angular_rate_z,
    output [15:0] x_angle,
    output [15:0] y_angle,
    output [15:0] z_angle
    );
    
    localparam WAIT_TIME = 50;
    //hard coded threshold, later adjusted based on calibration
	reg[7:0] threshold = 200;
	reg[15:0] neg_thresh = 'b1111111100111000; //this is -200 in 2's complement
	reg[15:0] ad_x, ad_y, ad_z;

    reg[15:0] calibrate_timer;
    reg[15:0] avg_x, avg_y, avg_z;
    reg[31:0] sum_x, sum_y, sum_z;
	reg[63:0] integrate_x, integrate_y, integrate_z;
	
	initial begin
	   calibrate_timer <= 0;
	   avg_x <= 0;
	   sum_x <= 0;
	   avg_y <= 0;
	   sum_y <= 0;
	   avg_z <= 0;
	   sum_z <= 0;
	   integrate_x <= 0;
	   integrate_y <= 0;
	   integrate_z <= 0;
	end
	
	always@ (posedge clk)
	begin
	   if (!system_reset) begin
	       calibrate_timer <= 0;
           avg_x <= 0;
           sum_x <= 0;
           avg_y <= 0;
           sum_y <= 0;
           avg_z <= 0;
           sum_z <= 0;
           integrate_x <= 0;
           integrate_y <= 0;
           integrate_z <= 0;
	   end
	   else if (angle_reset) begin
	       integrate_x <= 0;
	       integrate_y <= 0;
	       integrate_z <= 0;
	   end
	   else begin
           if (calibrate_timer < 8'hFE)
           begin
               // calibration step:
               // read the min and max values of the gyro at rest, 
               // and save them as the activation thresholds
               // also prepare to calulate average resting value
               calibrate_timer <= calibrate_timer + 1;
               
               sum_x <= sum_x + angular_rate_x;
               sum_y <= sum_y + angular_rate_y;
               sum_z <= sum_z + angular_rate_z;
           end 
           else if (calibrate_timer == 8'hFE)
           begin
               // divide each sum by 256 to get approximately the average
               // (took 255 samples, but close enough)
               // arithmetic right shift - keep sign
               avg_x <= sum_x >>> 8;
               avg_y <= sum_y >>> 8;
               avg_z <= sum_z >>> 8;
               calibrate_timer <= calibrate_timer + 1;
           end 
           else
           begin
                if(angular_rate_x > (threshold - avg_x) && angular_rate_x < (neg_thresh - avg_x))
                    begin
                        ad_x <=angular_rate_x - avg_x;
                    end
                else
                    begin
                        ad_x<=0 ; 
                    end
                integrate_x <= integrate_x + {{48{ad_x[15]}},ad_x[15:0]};   // sign extension
            
                if(angular_rate_y > (threshold - avg_y) && angular_rate_y < (neg_thresh - avg_y))
                    begin
                        ad_y <=angular_rate_y - avg_y;
                    end
                else
                    begin
                        ad_y<=0 ; 
                    end
                integrate_y <= integrate_y + {{48{ad_y[15]}},ad_y[15:0]};   // sign extension
    
                if(angular_rate_z > (threshold - avg_z) && angular_rate_z < (neg_thresh - avg_z))
                    begin
                        ad_z <=angular_rate_z  - avg_z;
                    end
                else
                    begin
                        ad_z<=0 ; 
                    end
                integrate_z <= integrate_z + {{48{ad_z[15]}},ad_z[15:0]};   // sign extension
            end
        end
	end

    // lower bits kept internal for accuracy
    assign x_angle = integrate_x>>28;
    assign y_angle = integrate_y>>28;
    assign z_angle = integrate_z>>28;
endmodule
