import 'dart:io';
import 'dart:math';

enum Hand { rock, paper, scissors }

abstract class Person {
  String name;

  Person(this.name);

  Hand pon();
}

class Player extends Person {
  Player(String name) : super(name);

  @override
  Hand pon() {
    while (true) {
      print("Choose your hand (rock/scissors/paper):");
      String? choice = stdin.readLineSync()?.toLowerCase();
      switch (choice) {
        case "rock":
          return Hand.rock;
        case "paper":
          return Hand.paper;
        case "scissors":
          return Hand.scissors;
        default:
          print("Invalid choice. Please try again.");
      }
    }
  }
}

class Computer extends Person {
  Computer(String name) : super(name);

  @override
  Hand pon() {
    final random = Random();
    return Hand.values[random.nextInt(Hand.values.length)];
  }
}

String input() {
  late String? text;
  while (true) {
    text = stdin.readLineSync();
    if (text == null || text.length == 0) {
      print("テキストを入力してください。");
      continue;
    }
    return text;
  }
}

void main() {
  print("じゃんけんゲームを始めます！");
  print("あなたの名前を入力してください：");
  String playerName = input();

  Player player = Player(playerName);
  Computer computer = Computer("コンピューター");

  while (true) {
    Hand playerHand = player.pon();
    Hand computerHand = computer.pon();
    print("${player.name}は${handToString(playerHand)}を出しました。");
    print("${computer.name}は${handToString(computerHand)}を出しました。");

    String result = judge(playerHand, computerHand);
    print(result);

    print("\nもう一度プレイしますか？ (yes/no)");
    String playAgain = input().toLowerCase();
    if (playAgain.toLowerCase() != "yes" && playAgain.toLowerCase() != "y") {
      print("ゲームを終了します！");
      break;
    }
  }
}

String handToString(Hand hand) {
  switch (hand) {
    case Hand.rock:
      return "グー";
    case Hand.paper:
      return "パー";
    case Hand.scissors:
      return "チョキ";
  }
}

String judge(Hand playerHand, Hand computerHand) {
  if (playerHand == computerHand) {
    return "引き分けです！";
  } else if ((playerHand == Hand.rock && computerHand == Hand.scissors) ||
      (playerHand == Hand.scissors && computerHand == Hand.paper) ||
      (playerHand == Hand.paper && computerHand == Hand.rock)) {
    return "あなたの勝ちです！";
  }
  return "コンピューターの勝ちです！";
}
