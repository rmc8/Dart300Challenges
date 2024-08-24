void main() {
  var (a, b) = (3, 5); // 0011 => 3, 0101 => 5
  // OR
  print(a | b); // 0111 => 7
  // AND
  print(a & b); // 0001 => 1
  // XOR
  print(a ^ b); // 0110 => 6
  // NAND
  print(~(a & b)); // 1110 => -2
}
