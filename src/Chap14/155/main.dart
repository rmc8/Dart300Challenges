void main() {
  try {
    throw Exception("test");
  } catch (e) {
    print(e);
    rethrow;
  }
}
