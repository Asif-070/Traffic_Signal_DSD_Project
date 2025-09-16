module counter (
    input clk,
    input reset,
    input [4:0] duration,
    output reg [4:0] n,
    output [4:0] dec_result,
    output carry_out
);
    wire [4:0] dec_res;
    wire c_out;

    // Instantiate the p_adder for decrementing n
    p_adder decrementer (
        .a4(n[4]), .a3(n[3]), .a2(n[2]), .a1(n[1]), .a0(n[0]), // Input n
        .b4(1'b0), .b3(1'b0), .b2(1'b0), .b1(1'b0), .b0(1'b1), // Subtract 1
        .cin(1'b1), .s1(1'b1), .s0(1'b0),                     // Configure as subtractor
        .o4(dec_res[4]), .o3(dec_res[3]), .o2(dec_res[2]),
        .o1(dec_res[1]), .o0(dec_res[0]), .carry(c_out)
    );

    // Timer logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            n <= duration;
        end else if (n == 0) begin
            n <= duration; // Reload timer from memory for the new state
        end else begin
            #100000
            n <= dec_res; // Decrement timer
        end
    end
endmodule
