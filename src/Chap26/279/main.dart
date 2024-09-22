class Text {
  final lines = <String>[];

  Text add(String line) {
    lines.add(line);
    return this; // OKのコードなら不要となる
  }

  List<String> get() => lines;
}

void ok() {
  var text = Text()
    ..add('Hello')
    ..add('World')
    ..add('!');
  print(text.get());
}

void ng() {
  var text = Text().add('Hello').add('World').add('?');
  print(text.get());
}

void main() {
  ok();
  ng();
}
