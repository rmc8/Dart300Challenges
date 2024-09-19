void main() {
  var code = """
# This is a Python Code

import re

def main():
    # Any process
    pass


if __name__ == "__main__":
    main()

"""
      .trim();
  final reg = RegExp(r"^\s*#.*$", multiLine: true);
  var ans = code.replaceAll(reg, "");
  print(ans);
}
