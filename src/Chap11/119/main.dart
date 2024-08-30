int Function(int) calc(int Function(int) f, int Function(int) g) {
  return (int n) => f(g(n));
}

int addEntryFee(int n) {
  return n + 1000;
}

int addTax(int n) {
  return (n * 1.1).toInt();
}

void main() {
  int charge = 3000;
  var calcFunc = calc(addEntryFee, addTax);
  print(calcFunc(charge));
}
