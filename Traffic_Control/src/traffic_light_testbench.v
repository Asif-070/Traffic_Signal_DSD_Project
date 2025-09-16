module traffic_light_testbench;
    // Inputs
    reg strt_clk;
    reg reset;

    // Outputs
    wire [2:0] light; // 3-bit output: 001 -> Red, 010 -> Yellow, 100 -> Green
    wire [4:0] remaining_time; // Remaining time for the current light

    // Instantiate the traffic light controller
    breadboard uut (
        .strt_clk(strt_clk),
        .reset(reset),
        .light(light),
        .remaining_time(remaining_time)
    );

    // Clock generation
    always #5 strt_clk = ~strt_clk;

    // Test sequence
    initial begin
        // Initialize inputs
		strt_clk = 0;
        reset = 1;
        #10;
        reset = 0;

        // Run simulation for 200 time units
        #5000000;
		#5000000;
		#5000000;
		#5000000;
		#5000000;
        // Finish simulation
        $stop;
    end
endmodule
