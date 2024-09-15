Future<void> err() async {
  throw Exception("Error!");
}

void main() async {
  err().then((value) => {print("done")}).catchError((e) => {print(e)});
}
