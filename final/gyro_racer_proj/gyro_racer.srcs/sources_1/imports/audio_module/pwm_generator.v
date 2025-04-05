`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/28 21:50:28
// Design Name: 
// Module Name: pwm_generator
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


module pwm_generator(
        input clk,  // 100MHz
        input rstn,
        input [7:0] pwm_duty,  // 256 levels
        output reg pwm_signal
    );
    
    wire [4:0] pwm_duty_truncated5 = pwm_duty[7:3];
    reg [4:0] counter;
    
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            counter <= 0;
            pwm_signal <= 0;
        end else begin
            counter <= counter + 1;
            if (counter == 0) begin
                pwm_signal <= 0;
            end else if (counter >= pwm_duty_truncated5) begin
                pwm_signal <= 1;
            end else if (counter == 5'b11111) begin
                pwm_signal <= 1;
            end else begin
                pwm_signal <= pwm_signal;
            end
        end
    end
endmodule
