import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';

void main() {
  group('DoneCubit', () {
    test('initial state is Colors.transparent', () {
      expect(DoneCubit().state, false);
    });

    group('change color', () {
      blocTest<DoneCubit, bool>(
        'emit [true] when state is false and roundDone is invoked',
        build: () => DoneCubit(),
        act: (cubit) => cubit.roundDone(),
        expect: const <bool>[true],
      );

      blocTest<DoneCubit, bool>(
        'emit [false] when state is true and roundDone is invoked',
        build: () => DoneCubit()..roundDone(),
        act: (cubit) => cubit.roundDone(),
        expect: const <bool>[false],
      );
    });
  });
}
