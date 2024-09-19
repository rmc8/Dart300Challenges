String? extractNumbers(String str) {
  final reg = RegExp(r"\d+");
  final match = reg.allMatches(str);
  if (match.isEmpty) {
    return null;
  }
  String ret = "";
  match.toList().forEach((element) {
    ret += element.group(0)!;
  });
  return ret;
}

void main() {
  var str1 = "Dart";
  var str2 = "Dart3.5.033";
  print(extractNumbers(str1));
  print(extractNumbers(str2));
}
