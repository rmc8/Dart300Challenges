abstract class Converter<T, U> {
  T convert(U value);
}

class StringToIntConverter implements Converter<int, String> {
  @override
  int convert(String value) {
    return int.parse(value);
  }
}

class IntToStringConverter implements Converter<String, int> {
  @override
  String convert(int value) {
    return value.toString();
  }
}

void main() {
  var stringToIntConverter = StringToIntConverter();
  var intToStringConverter = IntToStringConverter();
  print(stringToIntConverter.convert("5"));
  print(intToStringConverter.convert(5));
}
