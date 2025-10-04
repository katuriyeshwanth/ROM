module rom (
    input wire [2:0] address,  // 3-bit address input (for 8 memory locations)
    output reg [7:0] data      // 8-bit data output
);
    // ROM memory array
    reg [7:0] memory [0:7];    // 8 locations, each 8 bits wide

    // Initialize ROM with predefined values
    initial begin
        memory[0] = 8'h12;  // Example: data at address 0 is 0x12
        memory[1] = 8'h34;  // Example: data at address 1 is 0x34
        memory[2] = 8'h56;
        memory[3] = 8'h78;
        memory[4] = 8'h9A;
        memory[5] = 8'hBC;
        memory[6] = 8'hDE;
        memory[7] = 8'hF0;
    end

    // Output data based on address
    always @(*) begin
        data = memory[address];
    end

endmodule
