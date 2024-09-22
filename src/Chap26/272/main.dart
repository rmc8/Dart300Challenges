import 'package:path/path.dart' as path;
/*
Effective Dart: Style
https://dart.dev/effective-dart/style

DO name packages, directories, and source files using lowercase_with_underscores
*/

void ok() {
  print("[OK]");
  var package_name = "my_package";
  var directory_name = "my_directory";
  var file_name = "my_file.dart";
  print(path.join(package_name, directory_name, file_name));
}

void ng() {
  print("[NG]");
  // All of these are invalid
  var package_name = "myPackage";
  var directory_name = "my-directory";
  var file_name = "MyFile.dart";
  print(path.join(package_name, directory_name, file_name));
}

void main() {
  ok();
  ng();
}
