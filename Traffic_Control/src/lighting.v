module lighting (
    input [2:0] current_state,
    output reg [2:0] light
);
    // Output logic
    always @(*) begin
        case (current_state)
            3'b001: begin    // RED
                light = 3'b001;
                //$display("Time: %0t - Light: RED", $time);
            end
            3'b010: begin    // YELLOW
                light = 3'b010;
                $display("Time: %0t - Light: YELLOW", $time);
            end
            3'b100: begin    // GREEN
                light = 3'b100;
                $display("Time: %0t - Light: GREEN", $time);
            end
            default: begin
                light = 3'b001;    // Default to RED
                $display("Time: %0t - Light: DEFAULT (RED)", $time);
            end
        endcase
    end
endmodule
