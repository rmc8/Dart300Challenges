class MathBox<T extends num> {
  T value;
  MathBox(this.value);

  num add(num number) {
    return value + number;
  }
}

void main() {
  var mathBox1 = MathBox<int>(10);
  print(mathBox1.add(5));

  var mathBox2 = MathBox<double>(10.5);
  print(mathBox2.add(4.5));
}
