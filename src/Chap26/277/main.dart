/*
Effective Dart: Style
https://dart.dev/effective-dart/style



Readability studies show that long lines of text are harder to read because your eye has to travel farther when moving to the beginning of the next line. This is why newspapers and magazines use multiple columns of text.

If you really find yourself wanting lines longer than 80 characters, our experience is that your code is likely too verbose and could be a little more compact. The main offender is usually VeryLongCamelCaseClassNames. Ask yourself, "Does each word in that type name tell me something critical or prevent a name collision?" If not, consider omitting it.

Note that dart format does 99% of this for you, but the last 1% is you. It does not split long string literals to fit in 80 columns, so you have to do that manually.

Exception: When a URI or file path occurs in a comment or string (usually in an import or export), it may remain whole even if it causes the line to go over 80 characters. This makes it easier to search source files for a path.

Exception: Multi-line strings can contain lines longer than 80 characters because newlines are significant inside the string and splitting the lines into shorter ones can alter the program.

1行の文章が長いと読みづらくなることが可読性の研究によって示されています。非常に長い名前については、
「その名前が重要な情報を伝えているか」、「名前の衝突を防いでいるか」を確認すべきです。
`dart format`での整形でも80文字に収めるような分割はされないので手作業での修正が必要となります。

例外：コメントや文字列にURIやファイルパスが含まれる場合には80文字を超えても良いでしょう。パスの検索などしやすくなります。
例外：複数行の文字列は80文字を超える行を含められます。行を短く分割するよりも、文字列内での改行の方が重要であるためです。

*/

void main() {}
