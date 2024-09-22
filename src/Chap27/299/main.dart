import 'dart:io';

double convertTemperature(double temp, String fromScale) {
  if (fromScale == 'F') {
    return (temp - 32) * 5 / 9;
  } else {
    return temp * 9 / 5 + 32;
  }
}

String chooseScale() {
  while (true) {
    print("温度の単位を選択してください（F: 華氏, C: 摂氏）:");
    String? input = stdin.readLineSync()?.toUpperCase();
    if (input != null &&
        (input.toUpperCase() == 'F' || input.toUpperCase() == 'C')) {
      return input.toUpperCase();
    }
    print("無効な入力です。F または C を入力してください。");
  }
}

int? inputInteger() {
  while (true) {
    print("整数を入力してください：");
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print("入力が空です。もう一度入力してください。");
      continue;
    }

    try {
      return int.parse(input);
    } on FormatException {
      print("有効な整数ではありません。もう一度入力してください。");
    }
  }
}

void printResult(String originalScale, int originalTemp, String convertedScale,
    double convertedTemp) {
  print(
      "入力された${originalScale == 'F' ? '華氏' : '摂氏'}温度: $originalTemp°$originalScale");
  print(
      "${convertedScale == 'F' ? '華氏' : '摂氏'}に変換: ${convertedTemp.toStringAsFixed(2)}°$convertedScale");
}

void processTemperatureConversion() {
  String scale = chooseScale();
  String scaleFullName = scale == 'F' ? '華氏' : '摂氏';

  print("$scaleFullNameの温度を入力してください。");
  int? temperature = inputInteger();

  if (temperature != null) {
    double convertedTemp = convertTemperature(temperature.toDouble(), scale);
    String convertedScale = scale == 'F' ? 'C' : 'F';

    printResult(scale, temperature, convertedScale, convertedTemp);
  } else {
    print("有効な温度が入力されませんでした。");
  }
}

void main() {
  processTemperatureConversion();
}
