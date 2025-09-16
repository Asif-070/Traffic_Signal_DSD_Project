module control_logic (
    input clk,
    input reset,
    input [4:0] duration,
    output reg [2:0] current_state,
    output reg [4:0] n,
    output reg [2:0] light
);
    // State encoding
    localparam RED = 3'b001, YELLOW = 3'b010, GREEN = 3'b100;

    reg [2:0] next_state;
    wire [4:0] dec_result;
    wire carry_out;

    // Instantiate the decrementer
    p_adder decrementer (
        .a4(n[4]), .a3(n[3]), .a2(n[2]), .a1(n[1]), .a0(n[0]), // Input n
        .b4(1'b0), .b3(1'b0), .b2(1'b0), .b1(1'b0), .b0(1'b1), // Subtract 1
        .cin(1'b1), .s1(1'b1), .s0(1'b0),                     // Configure as subtractor
        .o4(dec_result[4]), .o3(dec_result[3]), .o2(dec_result[2]),
        .o1(dec_result[1]), .o0(dec_result[0]), .carry(carry_out)
    );

    // State transition logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            current_state <= RED;
            n <= duration; // Initialize timer with RED duration
        end else if (n == 0) begin
            current_state <= next_state;
            n <= duration; // Reload timer from memory for the new state
        end else begin
			#100000
            n <= {3'b000, dec_result}; // Decrement timer
        end
    end

    // Next state logic
    always @(*) begin
        case (current_state)
            RED: next_state = YELLOW;
            YELLOW: next_state = GREEN;
            GREEN: next_state = RED;
            default: next_state = RED;
        endcase
    end

    // Output logic
    always @(current_state) begin
        case (current_state)
            RED: begin
                light = RED;
                $display("Time: %0t - Light: RED", $time);
            end
            YELLOW: begin
                light = YELLOW;
                $display("Time: %0t - Light: YELLOW", $time);
            end
            GREEN: begin
                light = GREEN;
                $display("Time: %0t - Light: GREEN", $time);
            end
            default: begin
                light = RED;
                $display("Time: %0t - Light: DEFAULT (RED)", $time);
            end
        endcase
    end
endmodule
