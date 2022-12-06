// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:lumi_code/history/bloc/bloc.dart';

void main() {
  group('HistoryEvent', () {
    group('CustomHistoryEvent', () {
      test('supports value equality', () {
        expect(const CustomHistoryEvent(), isNotNull);
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          CustomHistoryEvent(),
          equals(const CustomHistoryEvent()),
        );
      });
    });
  });
}
