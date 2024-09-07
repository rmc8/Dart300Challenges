int calcPrice(int price, double? taxRate) {
  taxRate = taxRate?.abs() ?? 1.0;
  return (price * taxRate).toInt();
}

void main() {
  int price = 100;
  print(calcPrice(price, null));
  print(calcPrice(price, 1.10));
}
