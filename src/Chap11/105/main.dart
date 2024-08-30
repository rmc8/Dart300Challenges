void greet(String name, {String prefix = "Hello"}) {
  print("${prefix}, ${name}!");
}

void main() {
  greet("Dart", prefix: "Hi");
  greet("Flutter");
}
