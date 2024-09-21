import 'dart:io';

void main() {
  File source = File("q.md");
  File dest = File("copy.txt");
  source.copySync(dest.path);
}
