void ramen(String soup, String topping, String size) {
  print("${soup}ラーメン${topping}トッピング${size}盛り");
}

void main() {
  var miso = (topping, size) => ramen("味噌", topping, size);
  var large = (soup, topping) => ramen(soup, topping, "大");
  var negi = (soup, size) => ramen(soup, "ネギ", size);
  miso("ゴマ", "中");
  large("豚骨", "チャーシュー");
  negi("塩", "小");
}
