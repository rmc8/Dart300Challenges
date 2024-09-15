class Pair<T, U> {
  T first;
  U second;

  Pair(this.first, this.second);

  void printPair() {
    print(first);
    print(second);
  }
}

void main() {
  var pair1 = Pair(1, 2);
  pair1.printPair();

  var pair2 = Pair("Hello", "World");
  pair2.printPair();

  var pair3 = Pair("3", 4);
  pair3.printPair();
}
