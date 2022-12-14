// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:lumi_code/two_numbers/bloc/bloc.dart';
import 'package:lumi_code/two_numbers/models/two_numbers_model.dart';

void main() {
  group('TwoNumbersState', () {
    test('supports value equality', () {
      expect(
        TwoNumbersState(),
        equals(
          const TwoNumbersState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const TwoNumbersState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const twoNumbersState = TwoNumbersState();
          expect(
            twoNumbersState.copyWith(),
            equals(twoNumbersState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const twoNumbersState = TwoNumbersState(
            operation: Operation.add,
          );
          final otherTwoNumbersState = TwoNumbersState(
            operation: Operation.subtract,
          );
          expect(twoNumbersState, isNot(equals(otherTwoNumbersState)));

          expect(
            twoNumbersState.copyWith(
              operation: otherTwoNumbersState.operation,
            ),
            equals(otherTwoNumbersState),
          );
        },
      );
    });
  });
}
