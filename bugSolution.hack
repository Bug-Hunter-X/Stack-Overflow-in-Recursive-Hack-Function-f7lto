function foo(x: int): int {
  if (x > 1000) {
    return -1; // Indicate an error for large inputs
  } else if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
  echo foo(1001); //Test large input
}

This revised function incorporates a check that prevents recursion from exceeding the maximum stack depth for large numbers. Now the code will not crash for large inputs, and it will return -1 to signal this issue.