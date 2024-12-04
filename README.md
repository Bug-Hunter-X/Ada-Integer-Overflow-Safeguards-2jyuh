# Ada Integer Overflow Bug

This repository demonstrates a potential integer overflow bug in an Ada program.  The `Add` and `Subtract` functions lack error handling for situations where the sum or difference of the input integers exceeds the maximum or minimum representable integer value. This can lead to incorrect results or program crashes.

The `bug.ada` file contains the buggy code.  The `bugSolution.ada` file provides a solution to address this issue.

## Bug Description
The `Add` and `Subtract` functions simply perform addition and subtraction without any checks for potential overflow. If the inputs are such that the result exceeds the range of `Integer`, an overflow occurs.  The consequences depend on the Ada compiler and system; it might wrap around (producing an unexpected value), or it might crash.

## Solution
The solution involves adding checks to ensure the result remains within the valid range of `Integer`.  This is demonstrated in `bugSolution.ada`.