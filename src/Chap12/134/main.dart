enum HandSign { rock, scissors, paper }

void main() {
  HandSign myHand = HandSign.rock;
  switch (myHand) {
    case HandSign.rock:
      print("グー");
      break;
    case HandSign.scissors:
      print("チョキ");
      break;
    case HandSign.paper:
      print("パー");
      break;
  }
}
