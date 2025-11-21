# ECE 128 Lab 9 README File


## Project Description
This project's purpose is to develop code for a multiplier. More specifically, two 4-bit variables should be multiplied to produce an 8-bit product. The project introduces two types of multipliers, the combinational and sequential multipliers. The combinational multiplier is simple and only relies on current values. However, the sequential multiplier is more complex and requires a clock and states to function. The two mu11tipliers are compared to see the benefits and downsides. 

## How to simulate the program and implement it on the FPGA 
To simulate the program, ensure that each model file is located in the design sources, the constraints files are in the constraints directory, and the testbench file is in the simulation sources directory. Since there are multiple modules and testbenches, make sure the modules you want to simulate are set to the top in Vivado. To run the simulation, go to the navigator on the left side of Vivado and click run simulation, then run behavioral simulation to output the waveforms of the testbench. 

To program the FPGA with the top_module, make sure the proper module, testbench, and constraint file are selected. Then run the synthesis, implementation, and generate the bitstream. Once the bitstream is generated, open the hardware manager and program the board using the .bit file. 
