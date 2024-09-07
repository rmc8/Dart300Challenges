class MyException implements Exception {
  final String message;
  MyException(this.message);
  @override
  String toString() => "MyException: $message";
}

void main() {
  try {
    throw MyException("test");
  } catch (e) {
    print(e);
  }
}
