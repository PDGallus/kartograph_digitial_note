import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';

void main() {
  group('MonsterCubit', () {
    test('initial state is 0', () {
      expect(MonsterCubit().state, 0);
    });

    group('set value', () {
      blocTest<MonsterCubit, int>(
        'set value',
        build: () => MonsterCubit(),
        act: (cubit) => cubit.setValue(1),
        expect: const <int>[1],
      );

      blocTest<MonsterCubit, int>(
        'emit [3, 1] when set state is invoked with 3 then 1',
        build: () => MonsterCubit(),
        act: (cubit) => cubit..setValue(3)..setValue(1),
        expect: const <int>[3, 1],
      );
    });

    group('reset state', () {
      blocTest<MonsterCubit, int>(
        'emits 0 when reset is invoked',
        build: () => MonsterCubit()..emit(3),
        act: (cubit) => cubit.resetState(),
        expect: const <int>[0],
      );
    });
  });
}
