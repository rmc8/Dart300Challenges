typedef Fruit = (String? name, int? price);

void fruitCheck(Fruit fruit) {
  if (fruit case (String name, int price)) {
    print("Name: $name, Price: $price");
  } else {
    print("Invalid Fruit");
  }
}

void main() {
  Fruit apple = ("apple", 100);
  fruitCheck(apple);
}
