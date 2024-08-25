void main() {
  var greet = "Hello";
  var name = "Dart";
  var ans = "${greet}, ${name}!";
  var expectedText = "Hello, Dart!";
  assert(ans == expectedText);
  print(ans);
}
