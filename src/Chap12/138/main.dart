mixin class Swim {
  void swim() {
    print("swimming");
  }
}

mixin class Bike {
  void bike() {
    print("biking");
  }
}

mixin class Run {
  void run() {
    print("running");
  }
}

class Triathlon with Swim, Bike, Run {
  void start() {
    swim();
    bike();
    run();
  }
}

void main() {
  Triathlon triathlon = Triathlon();
  triathlon
    ..swim()
    ..bike()
    ..run();
}
