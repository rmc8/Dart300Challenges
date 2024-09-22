/*
Effective Dart: Documentation

https://dart.dev/effective-dart/documentation#do-use-doc-comments-to-document-members-and-types

* `///`を使ってDoc commentsを書く
* 公開APIには可能な限りDoc commentsを書く
* ライブラリレベルのDoc commentsを考慮する
* プライベートAPIにもDocu commentsを書くか検討する
* Doc commentsは一文にまとめた要約から始める
* 周囲の文脈と重複しないようにする
* 関数やメソッドのコメントは三人称の動詞ではじめる
* bool値ではない変数やプロパティのコメントは名詞句ではじめる
* bool値の変数やプロパティのコメントは「Whether」ではじめる
* ゲッターとセッターにDoc commentsを書かない
* ライブラリやタイプのコメントは名詞句ではじめる
* コードサンプルを含めることを検討する
* 角括弧を使って識別子を参照する
* パラメータ、戻り値、例外の説明には散文を活用する
* Doc commentsはメタデータアノテーションの前に置く
* Markdown書式の使用はほとんどの場合可能である
* ただし過度にMarkdownを使用することは避けるべきである
* HTMLの使用は特殊なケースを除いて避けるべきである
* コードブロックにはバッククォートフェンスを使用する
* 完結さを重視する
* 明らかに理解できる場合を除いて、略語や頭字語の使用を避ける
* インスタンスを指す時には「the」ではなく「this」を使用する

*/

/// 空のmain関数、何もしない
void main() {}
