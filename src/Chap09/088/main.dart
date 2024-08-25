void main() {
  Map<String, int> fruitsA = {
    "Banana": 10,
    "Apple": 20,
    "Orange": 30,
    "Grape": 40
  };
  Map<String, int> fruitsB = {
    "Cherry": 50,
    "Grape": 60,
    "Peach": 70,
    "Pear": 80
  };

  // スプレッド演算子
  Map<String, int> fruitsBasket = {...fruitsA, ...fruitsB};
  print(fruitsBasket);

  // addAllメソッド
  fruitsA.addAll(fruitsB);
  print(fruitsA);
}
