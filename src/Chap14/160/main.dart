void main() {
  try {
    throw AssertionError('AssertionErrorです');
  } on AssertionError catch (e) {
    print('AssertionErrorが発生しました: $e');
  } on Error catch (e) {
    print('その他のErrorが発生しました: $e');
  }
}
