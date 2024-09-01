class Google {
  static const String BASE_URL = 'https://www.google.com/search?q=';

  static String getSearchUrl(String word) {
    return "$BASE_URL$word";
  }
}

void main() {
  print(Google.getSearchUrl("Dart"));
}
