extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

String capitalizeWords(String input) {
  RegExp exp = RegExp(r'\b\w');
  return input.replaceAllMapped(exp, (Match m) => m[0]!.capitalize());
}

void main() {
  String text = "hello dart. how are you? i'm fine, thank you.";
  String capitalized = capitalizeWords(text);
  print(capitalized);
}
