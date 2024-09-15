List<T> reverseList<T>(List<T> list) {
  return List<T>.from(list.reversed);
}

void main() {
  var numbers = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];
  var reversed = reverseList<int>(numbers);
  print(reversed);
  var fruits = ["banana", "apple", "cherry", "date"];
  var reversedFruits = reverseList<String>(fruits);
  print(reversedFruits);
}
