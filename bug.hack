function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will result in a stack overflow error if the input is a very large number because of the recursive call without a base case. The solution is to introduce a check for when x is too large and avoid too many function calls.