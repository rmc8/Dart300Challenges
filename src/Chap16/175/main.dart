void main() {
  var numListA = [for (var i = 0; i < 10; i++) i];
  var numListB = [for (var n in numListA) n + 1];
  print(numListB);
}
