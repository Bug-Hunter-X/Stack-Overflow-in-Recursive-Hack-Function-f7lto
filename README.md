# Hack Recursive Function Stack Overflow Bug

This repository demonstrates a common error in recursive functions written in Hack: stack overflow due to unbounded recursion. The `foo` function calculates the factorial of a number using recursion. However, it lacks a check to handle large input values, leading to excessive function calls and ultimately a stack overflow.

## Bug Description
The `foo` function recursively calls itself until `x` reaches 0.  For very large inputs, this recursion depth exceeds the stack's capacity, resulting in a stack overflow error.

## Solution
The solution involves adding a check to handle large input values. This can be done by adding a check to see if x is greater than a certain threshold and returning an error message in that case.

## How to Reproduce
1. Clone this repository.
2. Compile and run the `bug.hack` file using the Hack compiler.
3. Observe the stack overflow error when using a large input value for the `foo` function.
4. Then run `bugSolution.hack` file to see the fixed version of the code.