class MyException implements Exception {
  final String message;
  MyException(this.message);

  @override
  String toString() => "MyException: $message";
}

void main() {
  try {
    throw MyException("test");
  } on MyException catch (e) {
    print(e);
  }
}
