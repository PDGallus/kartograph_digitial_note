import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';

void main() {
  group('RoundCubit', () {
    test('initial state is Colors.transparent', () {
      expect(RoundCubit().state, false);
    });

    group('finish round', () {
      blocTest<RoundCubit, bool>(
        'emit [1] when state is 0 and setMap is invoked with 1',
        build: () => RoundCubit(),
        act: (cubit) => cubit.finishRound(),
        expect: const <bool>[true],
      );
    });

    group('start round', () {
      blocTest<RoundCubit, bool>(
        'emit [false] when state is true and roundDone is invoked',
        build: () => RoundCubit()..emit(true),
        act: (cubit) => cubit.startRound(),
        expect: const <bool>[false],
      );
    });
  });
}
