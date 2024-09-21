import 'dart:io';

void main() async {
  String pathA = "text_a.txt";
  String pathB = "text_b.txt";
  File fa = File(pathA);
  File fb = File(pathB);
  if (await fa.exists()) {
    await fa.rename(pathB);
  } else if (await fb.exists()) {
    await fb.rename(pathA);
  }
  print("Done!");
}
