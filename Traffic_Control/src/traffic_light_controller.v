module breadboard (
    input strt_clk,
    input reset,
    output [2:0] light,         // 3-bit signal for light
    output [4:0] remaining_time // Timer countdown
);
    wire clk;
    wire [2:0] current_state;
    wire [2:0] next_state;
    wire [4:0] duration;
    wire [4:0] n;
    wire [4:0] dec_result;
    wire carry_out;

    // Instantiate the clock module
    clock clk_gen (
        .strt_clk(strt_clk),
        .clk(clk)
    );

    // Instantiate the memory module
    memory_module mem (
        .state(current_state),
        .fintime(duration)
    );

    // Instantiate the control logic module
    // Instantiate the control logic module
    control_logic control (
        .clk(clk),
        .reset(reset),
        .duration(duration),
        .current_state(current_state),
        .n(n),
        .light(light)
    );

    // Instantiate the counter module
    counter timer (
        .clk(clk),
        .reset(reset),
        .duration(duration),
        .n(n),
        .dec_result(dec_result),
        .carry_out(carry_out)
    );

    // Instantiate the lighting module
    lighting light_module (
        .current_state(current_state),
        .light(light)
    );

    // Assign remaining time output
    assign remaining_time = n;
endmodule
