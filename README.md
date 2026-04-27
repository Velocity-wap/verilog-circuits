# Verilog Circuits

A collection of sequential, FSM logic circuits implemented in Verilog HDL from scratch, as part of a self-directed study in digital design and RTL development.

## Sequential Circuits

| Module | Description |
|--------|-------------|
| SISO Shift Register | Serial in, serial out, 4-bit |
| SIPO Shift Register | Serial in, parallel out, 4-bit |
| Parallel Load Register | Load data in parallel, shift serially |
| Up-Down Counter | Synchronous counter with direction control |

## FSM Circuits

| Module | Description |
|--------|-------------|
| Traffic Light Controller | 3-state Moore FSM, cycles GREEN→YELLOW→RED every clock edge |
| Sequence Detector (1011) | 5-state Moore FSM, asserts output when last four input bits match "1011", transitions on each clock edge |

## Tools
- Icarus Verilog
- VSCode
- GTKWave

## Structure
Each module has a corresponding testbench. Simulate using:
```bash
iverilog -o sim/output rtl/module.v tb/module_tb.v
cd sim
vvp out
gtkwave output.vcd
```
