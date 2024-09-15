Future<String> test1() async {
  await Future.delayed((Duration.zero));
  return "The test1 function is done!";
}

Future<String> test2() async {
  await Future.delayed((Duration(seconds: 1)));
  return "The test2 function is done!";
}

Future<String> test3() async {
  await Future.delayed((Duration(seconds: 2)));
  return "The test3 function is done!";
}

void main() async {
  final anyValue = await Future.any([test1(), test2(), test3()]);
  print(anyValue);
}
