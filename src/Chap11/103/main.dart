int calcPrice(int price, [double tax = 1.10]) {
  return (price * tax).toInt();
}

void main() {
  var priceA = calcPrice(100);
  var priceB = calcPrice(100, 1.08);
  print(priceA);
  print(priceB);
}
