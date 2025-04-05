`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/31 23:40:51
// Design Name: 
// Module Name: axis_acker8k
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


module axis_acker8k(
    input clk,
    input resetn,
    input wire [31:0] s_axis_tdata,
    input wire s_axis_tvalid,
    output reg s_axis_tready,
    
    output reg [7:0] out_data
);
    localparam CLK_FREQ = 100_000_000;
    localparam DESIRED_FREQ = 2000;  // 8000Hz / 4 samples per beat
    localparam CLKDIV = CLK_FREQ / DESIRED_FREQ;
    localparam B0_OUTPUT_TIME = 0 * CLKDIV / 4;
    localparam B1_OUTPUT_TIME = 1 * CLKDIV / 4;
    localparam B2_OUTPUT_TIME = 2 * CLKDIV / 4;
    localparam B3_OUTPUT_TIME = 3 * CLKDIV / 4;
    
    reg [31:0] saved_value;
    reg [31:0] counter;
    initial begin
        out_data <= 8'h80;
        saved_value <= 32'h80808080;
        counter <= 0;
        s_axis_tready <= 0;
    end
    

    
    
    always @(posedge clk) begin
        if (~resetn) begin
            saved_value <= 32'h80808080;
            counter <= 0;
            s_axis_tready <= 0;
        end else begin
            if (s_axis_tready) begin
                s_axis_tready <= 0;
            end
            if (counter >= CLKDIV - 1) begin
                counter <= 0;
                if (s_axis_tvalid && !s_axis_tready) begin
                    saved_value <= s_axis_tdata;
                    s_axis_tready <= 1;
                end
            end else begin
                counter <= counter + 1;
            end
        end
    end
    
    always @(posedge clk) begin
        if (~resetn || ~s_axis_tvalid) begin
            out_data <= 8'h80;
        end else if (counter >= B3_OUTPUT_TIME) begin
            out_data <= saved_value[31:24];
        end else if (counter >= B2_OUTPUT_TIME) begin
            out_data <= saved_value[23:16];
        end else if (counter >= B1_OUTPUT_TIME) begin
            out_data <= saved_value[15:8];
        end else begin
            out_data <= saved_value[7:0];
        end
    end
    
    
    
endmodule
