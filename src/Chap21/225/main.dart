import "dart:io";
import 'dart:typed_data';

void main() {
  File f = File("../224/test.bin");
  Uint8List bytes = f.readAsBytesSync();
  ByteData byteData = ByteData.view(bytes.buffer);

  List<int> data = [];
  for (int i = 0; i < bytes.length; i += 4) {
    data.add(byteData.getInt32(i, Endian.little));
  }
  print("$data");
}
