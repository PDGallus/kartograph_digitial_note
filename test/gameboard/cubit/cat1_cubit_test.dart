import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';

void main() {
  group('Cat1Cubit', () {
    test('initial state is 0', () {
      expect(Cat1Cubit().state, 0);
    });

    group('set value', () {
      blocTest<Cat1Cubit, int>(
        'set value',
        build: () => Cat1Cubit(),
        act: (cubit) => cubit.setValue(1),
        expect: const <int>[1],
      );

      blocTest<Cat1Cubit, int>(
        'emit [3, 1] when set state is invoked with 3 then 1',
        build: () => Cat1Cubit(),
        act: (cubit) => cubit..setValue(3)..setValue(1),
        expect: const <int>[3, 1],
      );
    });

    group('reset state', () {
      blocTest<Cat1Cubit, int>(
        'emits 0 when reset is invoked',
        build: () => Cat1Cubit()..emit(3),
        act: (cubit) => cubit.resetState(),
        expect: const <int>[0],
      );
    });
  });
}
