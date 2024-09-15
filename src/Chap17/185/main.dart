Future<String> getUserName() {
  return Future.delayed(
    const Duration(seconds: 5),
    () => "Taro",
  );
}

Future<String> getUserId() {
  return Future.delayed(
    const Duration(seconds: 4),
    () => "@taro",
  );
}

void main() async {
  print("Jiro");
  var results = await Future.wait([getUserName(), getUserId()]);
  print("Name: ${results[0]}, ID: ${results[1]}");
}
