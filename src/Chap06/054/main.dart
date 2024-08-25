void main() {
  var italic = true;
  var bold = false;
  if (italic && bold) {
    print("太字＋斜体");
  } else if (italic) {
    print("斜体");
  } else if (bold) {
    print("太字");
  } else {
    print("通常");
  }
}
