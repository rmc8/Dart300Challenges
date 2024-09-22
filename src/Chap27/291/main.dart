String game(int num) {
  return switch (num) {
    _ when num % 3 == 0 && num % 5 == 0 => "FizzBuzz",
    _ when num % 3 == 0 => "Fizz",
    _ when num % 5 == 0 => "Buzz",
    _ => num.toString()
  };
}

void main() {
  for (var i = 1; i <= 100; i++) {
    print(game(i));
  }
}
