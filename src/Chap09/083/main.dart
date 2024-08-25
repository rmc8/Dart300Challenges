void main() {
  Map<String, int> fruits = {
    "Banana": 10,
    "Apple": 20,
    "Orange": 30,
    "Grape": 40,
    "Dog": -1,
  };
  fruits.remove("Dog");
  print(fruits);
}
