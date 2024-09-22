/*
Effective Dart: Design
https://dart.dev/effective-dart/design#prefer-defining-a-pure-mixin-or-pure-class-to-a-mixin-class


`mixin`はClassにメソッドや変数を追加するための機能です。Dart３.0以降ではmixinとclassを明確に
区別することが推奨されています。mixinを定義する時にはmixinキーワードを使い、mixinを使う時には
classの定義内でwithキーワードを使います。

*/

mixin Runner {
  void run() {
    print("I'm running");
  }
}

mixin Swimmer {
  void swim() {
    print("I'm swimming");
  }
}

mixin Rider {
  void ride() {
    print("I'm riding");
  }
}

class Triathlete with Runner, Swimmer, Rider {
  void start() {
    swim();
    ride();
    run();
  }
}

void main() {
  Triathlete triathlete = Triathlete();
  triathlete.start();
}
