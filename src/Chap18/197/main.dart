class Joiner<T> {
  List<T> values = [];

  void add(T value) {
    values.add(value);
  }

  String join(String delimiter) {
    return "";
  }
}

class TextJoiner extends Joiner<String> {
  @override
  String join(String delimiter) {
    var res = "";
    values.forEach((element) {
      res += element + delimiter;
    });
    return res.substring(0, res.length - delimiter.length);
  }
}

class IntJoiner extends Joiner<int> {
  @override
  String join(String delimiter) {
    var res = "";
    values.forEach((element) {
      res += element.toString() + delimiter;
    });
    return res.substring(0, res.length - delimiter.length);
  }
}

void main() {
  var textJoiner = TextJoiner();
  textJoiner.add("Hello");
  textJoiner.add("World");
  textJoiner.add("!");
  print(textJoiner.join(" "));
  var intJoiner = IntJoiner();
  intJoiner.add(1);
  intJoiner.add(2);
  intJoiner.add(3);
  print(intJoiner.join(","));
}
