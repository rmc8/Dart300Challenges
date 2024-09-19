List<String> extractUrlList(String html) {
  final reg = RegExp(
    r"https?(:\/\/[\w\/:%#\$&\?\(\)~\.=\+\-]+)",
    multiLine: true,
    caseSensitive: true,
  );
  final match = reg.allMatches(html);
  List<String> ret = [];
  match.toList().forEach((element) {
    String? url = element.group(0);
    if (url != null) {
      ret.add(url);
    }
  });
  return ret;
}

void main() {
  final String html = """
<body>
  <div>
    <ul>
      <li><a href="https://google.com">Google</a></li>
      <li><a href="https://yahoo.co.jp">Yahoo! Japan</a></li>
    </ul>
  </div>
</body>
"""
      .trim();
  final ret = extractUrlList(html);
  print(ret);
}
