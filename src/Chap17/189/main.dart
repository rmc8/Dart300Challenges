Future<String> timeoutTest() async {
  await Future.delayed(Duration(seconds: 3));
  return "Done!";
}

void main() {
  timeoutTest()
      .timeout(
        Duration(seconds: 1),
        onTimeout: () {
          return "Timeout!";
        },
      )
      .then(print)
      .catchError((e) {
        print(e);
      });
}
