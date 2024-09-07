void finallyTest(dynamic a) {
  try {
    print(a * a);
  } catch (e) {
    print(e);
  } finally {
    print("finally");
  }
}

void main() {
  finallyTest(8);
  finallyTest("test");
}
