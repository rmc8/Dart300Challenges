import 'dart:io';

Future<void> changePermission(String path) async {
  if (Platform.isWindows) {
    // Windows
    await Process.run('icacls', [path, '/deny', 'Everyone:(W,M)']);
  } else {
    // Unix
    await Process.run('chmod', ['444', path]);
  }
}

void main() async {
  var path = "test.txt";
  File f = File(path);
  if (!f.existsSync()) {
    await f.create();
    await changePermission(path);
  }
  try {
    f.writeAsString("TEST", mode: FileMode.append);
  } catch (e) {
    print(e);
  }
}
