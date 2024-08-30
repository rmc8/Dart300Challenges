int Function(int) addN(int n) {
  return (int a) => a + n;
}

void main() {
  print(addN(2)(3));
  print(addN(3)(4));
}
