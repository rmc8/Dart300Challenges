String greet(String name) {
  return "Hello, ${name}!";
}

void main() {
  var name = "Dart";
  var ret = greet(name);
  assert(ret == "Hello, Dart!");
  print(ret);
}
