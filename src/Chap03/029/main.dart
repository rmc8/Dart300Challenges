void main() {
  var text = "にわにはにわにわとりがいる";
  var rmNiwa = text.replaceAll("にわ", "");
  var ans = (text.length - rmNiwa.length) / 2;
  print(ans);
}
