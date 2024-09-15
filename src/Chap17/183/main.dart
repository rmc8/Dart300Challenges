Future<String> getUserName() async {
  await Future.delayed(Duration(seconds: 3));
  return "Taro";
}

void main() async {
  var userName = await getUserName();
  print(userName);
}
