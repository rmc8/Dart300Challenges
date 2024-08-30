int Function() counterFunc() {
  var count = 0;

  int inner() {
    count += 1;
    return count;
  }

  return inner;
}

void main() {
  var count = counterFunc();
  print(count());
  print(count());
  print(count());
}
