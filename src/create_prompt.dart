import 'dart:io';
import 'dart:async';

const PROMPT_TEMPLATE = '''
# 指示

以下の問いと答えを照合して正否を答えてください。

# 入力
## 問い
```
{qContent}
```

## 答え
```dart
{mainContent}
```
''';

void main(List<String> arguments) async {
  if (arguments.length != 2) {
    print('使用方法: dart script.dart <チャプター番号> <問題番号>');
    exit(1);
  }

  final chapterNum = int.tryParse(arguments[0]);
  final problemNum = arguments[1].padLeft(3, '0');

  if (chapterNum == null) {
    print('無効なチャプター番号です。数字を入力してください。');
    exit(1);
  }

  if (problemNum.length != 3) {
    print('無効な問題番号です。3桁の数字を入力してください。');
    exit(1);
  }

  final currentDir = Directory.current;
  final found =
      await processSpecificProblem(currentDir, chapterNum, problemNum);

  if (!found) {
    print('指定されたチャプターまたは問題が見つかりません。');
    exit(1);
  }
}

Future<bool> processSpecificProblem(
    Directory currentDir, int chapterNum, String problemNum) async {
  final chapterPath =
      '${currentDir.path}/Chap${chapterNum.toString().padLeft(2, '0')}';
  final problemPath = '$chapterPath/$problemNum';

  final problem = Directory(problemPath);
  if (await problem.exists()) {
    return await createPrompt(problem);
  }
  return false;
}

Future<bool> createPrompt(Directory problem) async {
  final qFile = File('${problem.path}/q.md');
  final mainFile = File('${problem.path}/main.dart');

  if (await qFile.exists() && await mainFile.exists()) {
    final qContent = await qFile.readAsString();
    final mainContent = await mainFile.readAsString();

    final prompt = PROMPT_TEMPLATE
        .replaceAll('{qContent}', qContent)
        .replaceAll('{mainContent}', mainContent);
    print(prompt);
    return true;
  } else {
    print('q.md または main.dart ファイルが見つかりません。');
    return false;
  }
}
