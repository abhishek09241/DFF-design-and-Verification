module tb ;
	dff_interface vif();	//Create DUT interface

	dff dut(vif);			// Instantiate DUT

	initial
		begin
			vif.clk <=0;	// Inintialize clock signal
		end

	always #10 vif.clk <= ~vif.clk;  // Toggle the clock every 10 time units

	environment env;	// Create environment instance

	initial
		begin
			env = new(vif);		// Initialize the environment with DUT interface
			env.gen.count = 30;	// Set the generator's stimulus count
			env.run();			// Run the environment		
		end	
	initial
		begin
			$dumpfile("dump.vcd");  //Specify the VCD dump file
			$dumpvarse;				// Dump all variables
		end

endmodule : tb