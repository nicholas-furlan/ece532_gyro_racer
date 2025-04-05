`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/30 04:01:03
// Design Name: 
// Module Name: vid_to_vga_adapter
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


module vid_to_vga_mixer(
        input active,
        input [15:0] rgba_background,
        input [15:0] rgba_sprites,
        input hsync,
        input vsync,
        output wire hsync_n,
        output wire vsync_n,
        output reg [3:0] red,
        output reg [3:0] green,
        output reg [3:0] blue
    );
    
    wire [3:0] bg_r;
    wire [3:0] bg_g;
    wire [3:0] bg_b;
    wire [3:0] bg_a;
    wire [3:0] sp_r;
    wire [3:0] sp_g;
    wire [3:0] sp_b;
    wire [3:0] sp_a;
    
    assign bg_r = rgba_background[3:0];
    assign bg_g = rgba_background[7:4];
    assign bg_b = rgba_background[11:8];
    assign bg_a = rgba_background[15:12];
    
    assign sp_r = rgba_sprites[3:0];
    assign sp_g = rgba_sprites[7:4];
    assign sp_b = rgba_sprites[11:8];
    assign sp_a = rgba_sprites[15:12];
    
    // WARNING: 
    // for easy implementation: any alpha != 0 means opaque
    // and alpha == 0 means transparent
    
    assign hsync_n = ~hsync;
    assign vsync_n = ~vsync;
    
    always @(*) begin
        if (!active) begin
            red     = 0;
            green   = 0;
            blue =   0;
        end else if (sp_a != 0) begin
            red     = sp_r;
            green   = sp_g;
            blue    = sp_b;
        end else if (bg_a != 0) begin
            red     = bg_r;
            green   = bg_g;
            blue    = bg_b;
        end else begin
            red     = 0;
            green   = 0;
            blue    = 0;
        end
    end
    
endmodule
