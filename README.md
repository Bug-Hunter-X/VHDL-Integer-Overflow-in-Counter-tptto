# VHDL Integer Overflow Bug

This repository demonstrates a subtle integer overflow bug in a simple VHDL counter. The counter increments until it reaches its maximum value (15), and then silently wraps around to 0. This behavior can be difficult to detect without careful testing or simulation.

## Bug Description
The `counter` entity uses an `INTEGER` type to store the count value. When the counter reaches 15, the next increment results in an overflow, silently resetting the counter to 0.  This is an example of integer overflow which is a common error in hardware description languages such as VHDL.