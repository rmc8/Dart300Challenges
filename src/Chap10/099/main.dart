typedef ClassInfo = ({int grade, String name});
typedef Student = ({String name, int age, ClassInfo classInfo});

ClassInfo getClassInfo(int grade, String name) {
  return (grade: grade, name: name);
}

Student getStudent(String name, int age, int grade, String className) {
  return (name: name, age: age, classInfo: getClassInfo(grade, name));
}

void main() {
  Student taro = getStudent("Taro", 12, 6, "A");
  print(taro.classInfo.grade);
  print(taro.classInfo.name);
}
