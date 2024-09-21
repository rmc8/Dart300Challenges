import "dart:io";
import 'dart:typed_data';

void main() async {
  List<int> data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  ByteData byteData = ByteData(data.length * 4);
  for (int i = 0; i < data.length; i++) {
    byteData.setInt32(i * 4, data[i], Endian.little);
  }
  Uint8List bytes = byteData.buffer.asUint8List();
  File f = File("test.bin");
  await f.writeAsBytes(bytes);
  print("Done!");
}
