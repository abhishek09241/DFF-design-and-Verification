class transaction;
	rand bit din;		// Define a random input "din"
		 bit dout;		// Define an output bit "dout"    Note: Isme rand nahi diya gaya, kyunki output signal ko random nahi karte; ye simulation ke runtime pe calculate hoga.

	function transaction copy();
		 	copy 		=	new();		// Create a new transaction object
		 	copy.din	=	this.din;	// Copy  the input value
		 	copy.dout 	= 	this.dout;	// Copy the output value
		 endfunction : copy	 
	

	function void display(input string tag);
			$display("[%0s] : DIN : %0b DOUT : %0b", tag, din, dout);	// Display Transaction information
	endfunction : display	 
endclass : transaction


// 

