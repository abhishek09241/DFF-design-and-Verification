# D Flip-Flop (DFF) Design and Verification

This repository contains the design and verification of a **D Flip-Flop (DFF)** using SystemVerilog. It demonstrates a complete process of developing and testing the DFF module, including a robust verification environment.

---

## 🛠️ Features

1. **DFF Design**:
   - Implements a standard D Flip-Flop with asynchronous reset.
   - Captures input `din` on the rising edge of the clock (`clk`) and outputs it as `dout`.

2. **Verification Environment**:
   - Built using **SystemVerilog UVM-like concepts**.
   - Includes:
     - **Transaction**: Defines input/output data for the DFF.
     - **Generator**: Creates randomized stimulus.
     - **Driver**: Applies stimulus to the DFF.
     - **Monitor**: Observes DFF behavior.
     - **Scoreboard**: Compares actual output with expected behavior.
   - Supports random and directed testing.

3. **Self-Checking Testbench**:
   - Automatically validates the correctness of the design.

---

## 🏗️ Repository Structure

```plaintext
├── design/
│   └── dff.sv         # DFF design implementation
│
├── testbench/
│   ├── dff_interface.sv    # Interface connecting DFF design and testbench
│   ├── transaction.sv      # Defines input/output data structure
│   ├── generator.sv        # Stimulus generator
│   ├── driver.sv           # Applies inputs to DFF
│   ├── monitor.sv          # Observes inputs and outputs
│   ├── scoreboard.sv       # Compares expected and actual outputs
│   ├── env.sv              # Testbench environment setup
│   └── tb_top.sv           # Top-level testbench
│
├── sim/
│   ├── run.do              # Simulation script (ModelSim/QuestaSim)
│   └── compile.tcl         # Compilation script
│
├── docs/
│   └── README.md           # This file
│
└── Makefile                # Build and run commands


📜 Design Description

The D Flip-Flop is a sequential logic element that captures the input din at the rising edge of the clock (clk) and provides the output as dout. If the asynchronous reset signal (rst) is active, the output is reset to 0.
Design Interface

    Inputs:
        clk: Clock signal.
        rst: Asynchronous reset signal.
        din: Data input.
    Output:
        dout: Data output.

🔍 Verification Overview

The verification environment is built to validate the functionality of the DFF under different scenarios:

    1.Randomized Input Testing:
        Ensures that the DFF operates correctly for all valid inputs.

    2.Directed Testing:
        Focused tests for edge cases like reset activation and clock behavior.

    3.Assertions:
        Checks that the DFF's output adheres to the expected behavior.

    4.Coverage Collection:
        Monitors how much of the design has been exercised.

🚀 How to Run
Prerequisites

    Simulation Tools: ModelSim/QuestaSim or any simulator supporting SystemVerilog.
    Make Utility: For automated build and simulation.

Steps

   1. Clone this repository: git clone https://github.com/<your-username>/dff-verification.git
      cd dff-verification
  2. Compile the design and testbench: make compile
  3. Run the simulation: make run
  4. View the waveform: make view


📈 Results

    1. Pass/Fail status is displayed in the console.
    2. Waveform files (.vcd or .wlf) are generated for detailed analysis.
    3. Coverage reports indicate how well the design has been tested.

📚 References

    1.SystemVerilog LRM (IEEE 1800-2017)
    2.UVM Cookbook
    3.D Flip-Flop Wikipedia

🙌 Contributing

Contributions are welcome! If you find issues or have suggestions, feel free to create a pull request or raise an issue.

📝 License

This project is licensed under the MIT License. See LICENSE for details.




