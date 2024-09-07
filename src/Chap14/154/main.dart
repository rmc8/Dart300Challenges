void fx(dynamic a) {
  try {
    print(a * a);
  } on NoSuchMethodError catch (e) {
    print('NoSuchMethodError($a): $e');
  } catch (e) {
    print(e);
  }
}

void main() {
  fx(null);
  fx("test");
  fx(8);
}
