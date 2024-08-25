bool toBool(String val) {
  if (val == "true") {
    return true;
  } else if (val == "false") {
    return false;
  } else {
    throw "不正な値が渡されました。";
  }
}

void main() {
  var t = true;
  var f = false;
  print(t.toString());
  print(f.toString());
  print(toBool(t.toString()));
  print(toBool(f.toString()));
}
