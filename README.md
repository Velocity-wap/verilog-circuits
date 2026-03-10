# Verilog Sequential Circuits

A collection of sequential logic circuits implemented in Verilog HDL from scratch, as part of a self-directed study in digital design and RTL development.

## Modules

| Module | Description |
|--------|-------------|
| SISO Shift Register | Serial in, serial out, 4-bit |
| SIPO Shift Register | Serial in, parallel out, 4-bit |
| Parallel Load Register | Load data in parallel, shift serially |
| Up-Down Counter | Synchronous counter with direction control |
| Traffic Light Controller | 3-state Moore FSM, cycles GREEN→YELLOW→RED every clock edge |

## Tools
- Icarus Verilog
- VSCode
- GTKWave

## Structure
Each module has a corresponding testbench. Simulate using:
```bash
iverilog -o out module.v module_tb.v
vvp out
gtkwave output.vcd
```
