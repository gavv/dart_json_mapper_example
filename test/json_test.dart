import 'dart:core';
import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:test/test.dart';

import 'package:dart_json_mapper_example/models.dart';

import 'json_test.mapper.g.dart';

final js1 = '''
{
    "metrics": {
        "numA": 0.0,
        "numB": 0.0,
        "numC": 0.0,

        "foo1": {
            "aaa": 0.0,
            "bbb": 0.0
        },

        "bar1": {
            "aaa": 0.0,
            "bbb": 0.0
        },

        "baz1": {
            "aaa": 0.0,
            "bbb": 0.0,
            "ccc": 0.0
        },

        "foo2": {
            "aaa": 0.0,
            "bbb": 0.0,
            "ccc": 0.0,
            "ddd": 0.0
        },

        "bar2": {
            "aaa": 0.0,
            "bbb": 0.0,
            "ccc": 0.0,
            "ddd": 0.0
        },

        "baz2": {
            "aaa": 0.0,
            "bbb": 0.0,
            "ccc": 0.0,
            "ddd": 0.0
        },

        "wee2": {
            "aaa": 0.0,
            "bbb": 0.0,
            "ccc": 0.0,
            "ddd": 0.0
        },

        "qux2": {
            "aaa": 0.0,
            "bbb": 0.0,
            "ccc": 0.0,
            "ddd": 0.0
        }
    }
}
''';

void main() {
  initializeJsonMapper();

  test('test', () {
      for (int i = 0; i < 10; i++) {
        Stopwatch stopwatch = new Stopwatch()..start();
        final result = JsonMapper.deserialize<Dataset>(js1);
        print('deserialize() executed in ${stopwatch.elapsedMilliseconds} ms');
      }
  });
}
