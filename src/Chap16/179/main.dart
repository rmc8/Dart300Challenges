void main() {
  var rec = (name: "Taro", age: 20);
  var (name: name, age: age) = rec;
  print(name);
  print(age);
}
