void main() {
  for (var i = 1; i <= 16; i++) {
    var res = switch (i) {
      _ when i % 3 == 0 || i % 5 == 0 => "Declare",
      _ => "Not Declare"
    };
    print("$i: $res");
  }
}
