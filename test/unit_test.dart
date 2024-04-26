// This is an example unit test.
//
// A unit test tests a single function, method, or class. To learn more about
// writing unit tests, visit
// https://flutter.dev/docs/cookbook/testing/unit/introduction

import 'package:flutter_test/flutter_test.dart';
import 'package:movie_booking/src/utils/date_format.dart';

void main() {
  group('Date format', () {
    test('should return correct format for given date', () {
      expect(formatDate("20130430"), "30-04-2013");
    });
  });
}
