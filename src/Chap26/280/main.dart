void main() {
  /*
  Debugモードでのみassertが実行され、assert内にfalseが設定されるとエラーとなる。
  開発時に予期しない値設定によってエラーが発生した場合に開発者に知らされるものであり、
  リリースモードではassertは無視されます。
  */
  var add = (n) => n + 1;
  assert(add(1) == 2, 'add(1) != 2');
  assert(add(2) == 3, 'add(2) != 3');
}
