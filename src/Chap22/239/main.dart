import 'dart:io';

void main() async {
  File f = File("temp.txt");
  try {
    await f.writeAsString("TEST", mode: FileMode.append);
    print("Done!");
  } finally {
    if (await f.exists()) {
      await f.delete();
    }
  }
}
