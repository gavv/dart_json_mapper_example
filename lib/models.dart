import 'dart:core';
import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
class SomeFields {
  double aaa = 0;
  double bbb = 0;
  double ccc = 0;
  double ddd = 0;
}

class BaseMetrics {
  double numA = 0;
  double numB = 0;
  double numC = 0;

  SomeFields foo1 = SomeFields();
  SomeFields bar1 = SomeFields();
  SomeFields baz1 = SomeFields();
}

@jsonSerializable
class Metrics extends BaseMetrics {
  SomeFields foo2 = SomeFields();
  SomeFields bar2 = SomeFields();
  SomeFields baz2 = SomeFields();
  SomeFields wee2 = SomeFields();
  SomeFields qux2 = SomeFields();
}

@jsonSerializable
class Dataset {
  Metrics metrics = Metrics();
}
