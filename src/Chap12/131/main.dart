abstract class Animal {
  void makeSound() {}
}

class Dog implements Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

void main() {
  Dog dog = Dog();
  dog.makeSound();
}
