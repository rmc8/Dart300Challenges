void main() {
  final data = {
    "user": {"name": "taro", "age": 20},
    "orders": [
      {"id": 1, "item": "book", "price": 100}
    ]
  };
  if (data
      case {
        "user": {"name": String name, "age": _},
        "orders": [{"id": _, "item": _, "price": _}, ...],
      }) {
    print("Found $name's order history.");
  } else {
    print("Not found user's order history.");
  }
}
