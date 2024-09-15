class Stack<T> {
  List<T> values = [];

  void push(T value) {
    values.add(value);
  }

  T pop() {
    return values.removeLast();
  }

  T peek() {
    return values.last;
  }

  void printValues() {
    print(values);
  }
}

void main() {
  var stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.printValues();
  print(stack.peek());
  print(stack.pop());
  print(stack.pop());
  print(stack.pop());
  stack.printValues();
}
