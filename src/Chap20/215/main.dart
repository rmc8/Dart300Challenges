String removeHtmlTag(String html) {
  final reg = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
  return html.replaceAll(reg, '');
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
  String result = removeHtmlTag(html);
  print(result);
}
