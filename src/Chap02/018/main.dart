void main() {
  var num = 42;
  var binary = num.toRadixString(2);
  var octal = num.toRadixString(8);
  var hex = num.toRadixString(16);
  print(binary);
  print(octal);
  print(hex);
}
