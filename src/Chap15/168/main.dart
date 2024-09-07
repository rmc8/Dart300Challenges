bool isLeapYear(int year) {
  if (year % 400 == 0) {
    return true;
  } else if (year % 100 == 0) {
    return false;
  } else if (year % 4 == 0) {
    return true;
  }
  return false;
}

void main() {
  List<int> yearsToTest = [1900, 2000, 2020, 2023, 2024];
  yearsToTest.forEach((element) {
    print("$element ${isLeapYear(element)}");
  });
}
