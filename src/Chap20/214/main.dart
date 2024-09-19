bool passwordFormatCheck(String pwd) {
  final reg = RegExp(r"^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{8,}$");
  return reg.hasMatch(pwd);
}

void main() {
  print(passwordFormatCheck("abc123ABC456edf") ? "OK" : "NG");
  print(passwordFormatCheck("Password") ? "OK" : "NG");
}
