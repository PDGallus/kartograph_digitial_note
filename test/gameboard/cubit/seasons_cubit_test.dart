import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';

void main() {
  group('SeasonsCubit', () {
    test('initial state is 0', () {
      expect(SeasonsCubit().state, 0);
    });

    group('set value', () {
      blocTest<SeasonsCubit, int>(
        'emit [1] when state is 0 and nextSeason is invoked',
        build: () => SeasonsCubit(),
        act: (cubit) => cubit.nextSeason(),
        expect: const <int>[1],
      );

      blocTest<SeasonsCubit, int>(
        'emit [1, 2] when state is 0 and nextSeason is invoked two times',
        build: () => SeasonsCubit(),
        act: (cubit) => cubit..nextSeason()..nextSeason(),
        expect: const <int>[1,2],
      );
    });

    group('reset state', () {
      blocTest<SeasonsCubit, int>(
        'emits 0 when reset is invoked',
        build: () => SeasonsCubit()..emit(3),
        act: (cubit) => cubit.resetState(),
        expect: const <int>[0],
      );
    });
  });
}
