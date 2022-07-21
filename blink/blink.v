// create module
	module blink (
	input wire clk, // 50MHz input clock
	output wire [7:0] LED // array of 8 LEDs
	);

// create a binary counter
	reg [31:0] cnt; // 32-bit counter

initial begin

cnt <= 32'h00000000; // start at zero

end

always @(posedge clk) begin

cnt <= cnt + 1; // count up

end

//assign LEDs to different bits of the counter to blink the LED at interesting paterns

assign LED[3:0] = cnt[28:25];
assign LED[7:4] = cnt[25:28];

endmodule