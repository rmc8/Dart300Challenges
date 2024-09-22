/*
Effective Dart: Style
https://dart.dev/effective-dart/style


Formatting
Like many languages, Dart ignores whitespace. However, humans don't. Having a consistent whitespace style helps ensure that human readers see code the same way the compiler does.

DO format your code using dart format
Formatting is tedious work and is particularly time-consuming during refactoring. Fortunately, you don't have to worry about it. We provide a sophisticated automated code formatter called dart format that does it for you. We have some documentation on the rules it applies, but the official whitespace-handling rules for Dart are whatever dart format produces.

The remaining formatting guidelines are for the few things dart format cannot fix for you.

CONSIDER changing your code to make it more formatter-friendly
The formatter does the best it can with whatever code you throw at it, but it can't work miracles. If your code has particularly long identifiers, deeply nested expressions, a mixture of different kinds of operators, etc. the formatted output may still be hard to read.

When that happens, reorganize or simplify your code. Consider shortening a local variable name or hoisting out an expression into a new local variable. In other words, make the same kinds of modifications that you'd make if you were formatting the code by hand and trying to make it more readable. Think of dar


===

dart formatを使用すると自動でコード整形ができます。ただし、フォーマッタ完全ではありません。長い識別子や深いネストを含む式、多様な演算子の混在などがある場合に、整形されたあとでも読みづらい可能性があります。そのため、変数や式を簡略化し読みやすいコードにする必要があります。`dart format`はより読みやすいコードを作るためのツールの一つとして考えましょう。
*/

void main() {}
