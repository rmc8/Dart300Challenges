void main() {
  var fruits = {"apple": 100, "banana": 200, "orange": 300};
  var {"apple": apple, "banana": banana} = fruits;
  print(apple);
  print(banana);
}
