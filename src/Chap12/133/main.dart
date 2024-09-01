class Dog {}

extension on Dog {
  void makeSound() {
    print("Woof!");
  }
}

void main() {
  Dog dog = Dog();
  dog.makeSound();
}
