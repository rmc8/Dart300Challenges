bool isEmailFormat(String email) {
  final reg = RegExp(
      r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  return reg.hasMatch(email);
}

void main() {
  print(isEmailFormat('w9p9J@example.com') ? "EmailFormat" : "InvalidFormat");
  print(isEmailFormat("https://example.com") ? "EmailFormat" : "InvalidFormat");
}
