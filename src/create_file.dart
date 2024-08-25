import 'dart:io';

void createTextFile(String path) {
  if (!File(path).existsSync()) {
    File(path).writeAsStringSync('');
  }
}

void main() {
  var thisDir = Directory.current.path;

  var chap = {
    'Chap01': List.generate(10, (i) => i + 1),
    'Chap02': List.generate(10, (i) => i + 11),
    'Chap03': List.generate(10, (i) => i + 21),
    'Chap04': List.generate(10, (i) => i + 31),
    'Chap05': List.generate(10, (i) => i + 41),
    'Chap06': List.generate(10, (i) => i + 51),
    'Chap07': List.generate(10, (i) => i + 61),
    'Chap08': List.generate(10, (i) => i + 71),
    'Chap09': List.generate(10, (i) => i + 81),
    'Chap10': List.generate(10, (i) => i + 91),
    'Chap11': List.generate(20, (i) => i + 101),
    'Chap12': List.generate(20, (i) => i + 121),
    'Chap13': List.generate(10, (i) => i + 141),
    'Chap14': List.generate(10, (i) => i + 151),
    'Chap15': List.generate(10, (i) => i + 161),
    'Chap16': List.generate(10, (i) => i + 171),
    'Chap17': List.generate(10, (i) => i + 181),
    'Chap18': List.generate(10, (i) => i + 191),
    'Chap19': List.generate(10, (i) => i + 201),
    'Chap20': List.generate(10, (i) => i + 211),
    'Chap21': List.generate(10, (i) => i + 221),
    'Chap22': List.generate(10, (i) => i + 231),
    'Chap23': List.generate(10, (i) => i + 241),
    'Chap24': List.generate(10, (i) => i + 251),
    'Chap25': List.generate(10, (i) => i + 261),
    'Chap26': List.generate(20, (i) => i + 271),
    'Chap27': List.generate(10, (i) => i + 291),
  };

  chap.forEach((ch, ql) {
    for (var q in ql) {
      var dirPath = Directory('$thisDir/$ch/${q.toString().padLeft(3, '0')}');
      dirPath.createSync(recursive: true);
      createTextFile('${dirPath.path}/q.md');
      createTextFile('${dirPath.path}/main.dart');
    }
  });
}