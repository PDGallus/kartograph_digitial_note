import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';

void main() {
  group('MapCubit', () {
    test('initial state is Colors.transparent', () {
      expect(MapCubit().state, 0);
    });

    group('set map', () {
      blocTest<MapCubit, int>(
        'emit [1] when state is 0 and setMap is invoked with 1',
        build: () => MapCubit(),
        act: (cubit) => cubit.setMap(1),
        expect: const <int>[1],
      );

      blocTest<MapCubit, int>(
        'emit [false] when state is true and roundDone is invoked',
        build: () => MapCubit()..emit(1),
        act: (cubit) => cubit.setMap(0),
        expect: const <int>[0],
      );
    });
  });
}
