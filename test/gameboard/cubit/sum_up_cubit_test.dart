import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';

void main() {
  group('SumUpCubit', () {
    test('initial state is 0', () {
      expect(SumUpCubit().state, 0);
    });

    group('sum up', () {
      blocTest<SumUpCubit, int>(
        'emit [1] when state is 0 and sumUp is invoked with 1',
        build: () => SumUpCubit(),
        act: (cubit) => cubit.sumUp(1),
        expect: const <int>[1],
      );

      blocTest<SumUpCubit, int>(
        'emit [6] when state is 2 and sumUp is invoked with 4',
        build: () => SumUpCubit()..emit(2),
        act: (cubit) => cubit.sumUp(4),
        expect: const <int>[6],
      );
    });

    group('reset state', () {
      blocTest<SumUpCubit, int>(
        'emits 0 when resetState is invoked',
        build: () => SumUpCubit()..emit(3),
        act: (cubit) => cubit.resetState(),
        expect: const <int>[0],
      );
    });
  });
}
