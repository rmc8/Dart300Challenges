/*
Effective Dart: Style
https://dart.dev/effective-dart/style

PREFER using lowerCamelCase for constant names
In new code, use lowerCamelCase for constant variables, including enum values.

[Note]
We initially used Java's SCREAMING_CAPS style for constants. We changed for a few reasons:

SCREAMING_CAPS looks bad for many cases, particularly enum values for things like CSS colors.
Constants are often changed to final non-const variables, which would necessitate a name change.
The values property defined on an enum type is const and lowercase.
*/

void ok() {
  const pi = 3.14;
  const taxRate = 0.10;
  const indexNum = 3;
}

void ng() {
  const PI = 3.14;
  const TAX_RATE = 0.10;
  const INDEX_NUM = 3;
}

void main() {}
