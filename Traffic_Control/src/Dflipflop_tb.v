`timescale 1ps / 1ps

module Dflipflop_tb;

    // Inputs
    reg in;
    reg Clk;
    reg load;
    reg En;
    reg Clear;

    // Outputs
    wire out;

    // Instantiate the Dflipflop module
    Dflipflop uut (
        .in(in),
        .out(out),
        .Clk(Clk),
        .load(load),
        .En(En),
        .Clear(Clear)
    );

    // Clock generation: 10ps period
    initial begin
        Clk = 0;
        forever #5 Clk = ~Clk; // Toggle every 5ps
    end

    // Test procedure
    initial begin
        // Initialize inputs
        in = 0;
        load = 0;
        En = 0;
        Clear = 0;

        // Monitor the output
        $monitor("Time: %0t | in: %b | Clk: %b | load: %b | En: %b | Clear: %b | out: %b", 
                 $time, in, Clk, load, En, Clear, out);

        // Test Clear functionality
        #10 Clear = 1; // Assert Clear
        #10 Clear = 0; // Deassert Clear

        // Test Enable functionality
        load = 1;
        En = 0; 
        in = 1; 
        #10; // No change due to En = 0

        En = 1; 
        #10; // Output should update to in = 1

        // Test with Clear asserted
        Clear = 1;
        #10; // Output should reset to 0

        // Test high-impedance behavior
        Clear = 0;
        En = 0; 
        #10; // Output should be high-impedance (z)

        // Test regular data loading
        En = 1; 
        in = 0;
        #10; // Output should update to in = 0
        in = 1;
        #10; // Output should update to in = 1

        // End simulation
        #20 $stop;
    end

endmodule
