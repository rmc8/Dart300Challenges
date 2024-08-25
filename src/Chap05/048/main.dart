void main() {
  var numList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  numList.forEach((element) {
    var pow = element * element;
    print("${element} * ${element} = ${pow}");
  });
}
