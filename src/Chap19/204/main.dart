class Fruit {
  String name;
  int price;

  Fruit(this.name, this.price);
}

void main() {
  var apple = Fruit("apple", 100);
  var Fruit(name: name, price: price) = apple;
  print(name);
  print(price);
}
