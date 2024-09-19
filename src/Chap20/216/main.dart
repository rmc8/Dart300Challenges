String removeSpaces(String text) {
  final reg = RegExp(r"\s+");
  return text.replaceAll(reg, " ");
}

void main() {
  final text = "a  b    c d e      f";
  final result = removeSpaces(text);
  print(result);
}
