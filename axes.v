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
    
//    //hard coded calibration and min and max vals for testing only
	reg[7:0] threshold = 200;
	reg[15:0] neg_thresh = 'b1111111100111000; //this is -200 in 2's complement
	reg[15:0] ad_x, ad_y, ad_z;

    reg[15:0] calibrate_timer;
    reg[15:0] p_thresh_x, n_thresh_x, avg_x;
    reg[31:0] sum_x;
    reg[15:0] p_thresh_y, n_thresh_y, avg_y;
    reg[31:0] sum_y;
    reg[15:0] p_thresh_z, n_thresh_z, avg_z;
    reg[31:0] sum_z;
	reg[63:0] integrate_x, integrate_y, integrate_z;
	
	initial begin
	   calibrate_timer <= 0;
	   p_thresh_x <= 0;
	   n_thresh_x <= 0;
	   avg_x <= 0;
	   sum_x <= 0;
	   p_thresh_y <= 0;
	   n_thresh_y <= 0;
	   avg_y <= 0;
	   sum_y <= 0;
	   p_thresh_z <= 0;
	   n_thresh_z <= 0;
	   avg_z <= 0;
	   sum_z <= 0;
	   integrate_x <= 0;
	   integrate_y <= 0;
	   integrate_z <= 0;
	end
	
	always@ (posedge clk)
	begin
	   if (calibrate_timer < 8'hFE)
	   begin
	       // calibration step:
	       // read the min and max values of the gyro at rest, 
	       // and save them as the activation thresholds
	       // also prepare to calulate average resting value
	       calibrate_timer <= calibrate_timer + 1;
	       
//	       if (p_thresh_x > angular_rate_x)
//	           p_thresh_x <= angular_rate_x;
//	       if (n_thresh_x < angular_rate_x)
//	           n_thresh_x <= angular_rate_x;
	       sum_x <= sum_x + angular_rate_x;
	       
//	       if (p_thresh_y > angular_rate_y)
//	           p_thresh_y <= angular_rate_y;
//	       if (n_thresh_y < angular_rate_y)
//	           n_thresh_y <= angular_rate_y;
	       sum_y <= sum_y + angular_rate_y;
	       
//	       if (p_thresh_z > angular_rate_z)
//	           p_thresh_z <= angular_rate_z;
//	       if (n_thresh_z < angular_rate_z)
//	           n_thresh_z <= angular_rate_z;
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
//           if(angular_rate_x > p_thresh_x && angular_rate_x < p_thresh_y)
            if(angular_rate_x > (threshold - avg_x) && angular_rate_x < (neg_thresh - avg_x))
                begin
                    ad_x <=angular_rate_x - avg_x;//after calibration, remember to adjust for it
                end
            else
                begin
                    ad_x<=0 ; 
                end
            integrate_x <= integrate_x + {{48{ad_x[15]}},ad_x[15:0]};
        
            if(angular_rate_y > (threshold - avg_y) && angular_rate_y < (neg_thresh - avg_y))
//            if(angular_rate_y > p_thresh_y && angular_rate_y < p_thresh_y)
                begin
                    ad_y <=angular_rate_y - avg_y;//after calibration, remember to adjust for it
                end
            else
                begin
                    ad_y<=0 ; 
                end
            integrate_y <= integrate_y + {{48{ad_y[15]}},ad_y[15:0]};

            if(angular_rate_z > (threshold - avg_z) && angular_rate_z < (neg_thresh - avg_z))
//            if(angular_rate_z > p_thresh_z && angular_rate_z < p_thresh_z)
                begin
                    ad_z <=angular_rate_z  - avg_z;//after calibration, remember to adjust for it
                end
            else
                begin
                    ad_z<=0 ; 
                end
            integrate_z <= integrate_z + {{48{ad_z[15]}},ad_z[15:0]};
        end
	end
	
//	//integrate x
//    always@(posedge clk)
//    begin
//    if(angular_rate_x > threshold && angular_rate_x < neg_thresh)
//        begin
//            ad_x <=angular_rate_x;//after calibration, remember to adjust for it
//        end
//    else
//        begin
//            ad_x<=0 ; 
//        end
//        integrate_x <= integrate_x + ad_x;
//    end
    
//    always@(posedge clk)
//    begin
//    if(angular_rate_y > threshold && angular_rate_y < neg_thresh)
//        begin
//            ad_y <=angular_rate_y;//after calibration, remember to adjust for it
//        end
//    else
//        begin
//            ad_y<= 0; 
//        end
//        integrate_y <= integrate_y + ad_y;
//    end
    
//    reg[1:0] counter=0;
//    always@(posedge clk)
//    begin
//    if(counter==0)
//        begin
//        if(angular_rate_z > threshold && angular_rate_z < neg_thresh) //test to see if this fixes it
//            begin
//                ad_z <=angular_rate_z;//after calibration, remember to adjust for it
//            end
//        else
//            begin
//                ad_z<= 0; 
//            end
//            integrate_z <= integrate_z + {{48{ad_z[15]}},ad_z[15:0]};
//        end
        
//        counter<=counter+1;
//    end
    
    assign x_angle = integrate_x>>28;
    assign y_angle = integrate_y>>28;
    assign z_angle = integrate_z>>28;
endmodule
