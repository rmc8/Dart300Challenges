import 'dart:io';
import 'dart:convert';

void main() async {
  File jf = File("input.json");
  String jsonStr = await jf.readAsString();
  print(jsonDecode(jsonStr));
}
