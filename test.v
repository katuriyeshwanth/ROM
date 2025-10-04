module rom_tb;
    reg [2:0] address;
    wire [7:0] data;

    // Instantiate the ROM
    rom uut (
        .address(address),
        .data(data)
    );

    initial begin
        $monitor("Time=%0t | Address=%b | Data=%h", $time, address, data);

        // Test different addresses
        address = 3'b000; #10;
        address = 3'b001; #10;
        address = 3'b010; #10;
        address = 3'b011; #10;
        address = 3'b100; #10;
        address = 3'b101; #10;
        address = 3'b110; #10;
        address = 3'b111; #10;

        $finish;
    end
endmodule

  
