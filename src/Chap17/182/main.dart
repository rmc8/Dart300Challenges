Future<String> getUserName() {
  return Future.delayed(
    const Duration(seconds: 3),
    () => "Taro",
  );
}

Future<void> main() async {
  var userNameFuture = getUserName();
  print("Jiro");
  var userName = await userNameFuture;
  print(userName);
}
