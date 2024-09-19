int? sumCommaSeparatedValues(String text) {
  final reg = RegExp(r'^\d+(?:,\d+)*$');
  if (!reg.hasMatch(text)) {
    return null;
  }
  var sum = 0;
  final numbers = text.split(',');
  for (final number in numbers) {
    sum += int.parse(number);
  }
  return sum;
}

void main() {
  print(sumCommaSeparatedValues("1,2,3,4,5,6,7,8,9,10"));
}
