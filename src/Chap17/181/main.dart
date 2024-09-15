Future<String> getUserName() {
  return Future.delayed(
    const Duration(seconds: 3),
    () => "Taro",
  );
}

void main() {
  getUserName().then(print);
  print("Jiro");
}
