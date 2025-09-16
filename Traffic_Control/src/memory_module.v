module memory_module (
    input [2:0] state,       // 3-bit input for traffic light state
    output reg [4:0] fintime    // 5-bit output for the duration (time in seconds)
);

    // Memory mapping logic
    always @(*) begin
        case (state)
            3'b001: fintime = 5'd10; // RED state -> 25 seconds
            3'b010: fintime = 5'd20;  // YELLOW state -> 5 seconds
            3'b100: fintime = 5'd25; // GREEN state -> 20 seconds
            default: fintime = 5'd0; // Default or invalid state -> 0 seconds
        endcase
    end
endmodule
