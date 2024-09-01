class ListJoiner<T> {
  final List<T> _list;

  ListJoiner(this._list);

  String join({String separator = ","}) {
    var res = "";
    _list.forEach((element) {
      res += element.toString() + separator;
    });
    return res.substring(0, res.length - separator.length);
  }
}

void main() {
  var numJoiner = ListJoiner([1, 2, 3]);
  print(numJoiner.join());
  var strJoiner = ListJoiner(["a", "b", "c"]);
  print(strJoiner.join());
}
