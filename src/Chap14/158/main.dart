void main() {
  try {
    throw Exception("test");
  } catch (e, s) {
    print(e);
    print(s);
  }
}
