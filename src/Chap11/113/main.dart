int factorial(int n) {
  if (n <= 1) {
    return 1;
  }
  return factorial(n - 1) * n;
}

void main() {
  print(factorial(5));
}
