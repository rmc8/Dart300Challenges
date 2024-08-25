void main() {
  var english = 60;
  var math = 70;
  var science = 80;
  if (english + math + science >= 180) {
    print("合格");
  } else if (english < 30 || math < 30 || science < 30) {
    print("不合格");
  } else if (!(english + math + science >= 180)) {
    print("再試験");
  }
}
