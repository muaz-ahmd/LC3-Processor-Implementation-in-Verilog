# LC3 Processor in Verilog

A simple LC3 processor implementation written in Verilog. This project is still in progress and focuses on building the core datapath blocks used in an LC3 design.

## Included Modules

- `alu.v` – ALU for basic operations like ADD, AND, and NOT
- `decoder.v` – Instruction decoding and control signal generation
- `pc.v` – Program counter logic
- `register_file.v` – 8-register file for R0-R7
- `sign_extended.v` – Sign extension for immediate values
- `lc3_top.v` – Top-level module placeholder

## Current Status

This repository is a learning project and is not yet a complete LC3 processor. The main building blocks are implemented, but the full processor integration and instruction execution flow still need to be completed.

## Example Operations

The current design includes support for basic instructions such as:

- ADD
- AND
- NOT
- LD
- LDR
- LDI
- LEA
- TRAP

## Usage

You can compile the Verilog files with a simulator such as Icarus Verilog:

```bash
iverilog -g2012 -o lc3_sim alu.v decoder.v pc.v register_file.v sign_extended.v lc3_top.v
vvp lc3_sim
```

## Notes

This project is intended for educational use and for understanding how a simple processor is structured in Verilog.
