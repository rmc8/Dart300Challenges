/*
Effective Dart: Style
https://dart.dev/effective-dart/style

## Ordering
To keep the preamble of your file tidy, we have a prescribed order that directives should appear in. Each "section" should be separated by a blank line.
A single linter rule handles all the ordering guidelines: directives_ordering.

* DO place dart: imports before other imports
* DO place package: imports before relative imports
* DO specify exports in a separate section after all imports
* DO sort sections alphabetically

* 'dart:name'を他のimportよりも前に置く
* 'package:name'を相対的なimportよりも前に置く
* 'export'を別セクションとして後に置く
* セクションをアルファベット順に並べる

[FYI]
import_sorterを使うと便利に並び替えができます。
https://pub.dev/documentation/import_sorter/latest/
*/

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart';

import './util.dart';

export 'lib.dart';

void main() {}
