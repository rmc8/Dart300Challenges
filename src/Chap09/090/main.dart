void main() {
  Map<String, int> fruits = {
    "Banana": 10,
    "Apple": 20,
    "Orange": 30,
    "Grape": 40,
    "Cherry": 50,
  };
  fruits.removeWhere((_, value) => value < 30);
  print(fruits);
}
