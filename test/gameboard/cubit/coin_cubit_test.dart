import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';

void main() {
  group('CoinCubit', () {
    test('initial state is 0', () {
      expect(CoinCubit().state, 0);
    });

    group('calculate coins', () {
      blocTest<CoinCubit, int>(
        'emit [1] when state is 0 and calculateCoins was invoked with 1',
        build: () => CoinCubit(),
        act: (cubit) => cubit.calculateCoins(1),
        expect: const <int>[1],
      );

      blocTest<CoinCubit, int>(
        'emit [0] when state is 1 and calculateCoins was invoked with -1',
        build: () => CoinCubit()..emit(1),
        act: (cubit) => cubit.calculateCoins(-1),
        expect: const <int>[0],
      );

      blocTest<CoinCubit, int>(
        'emit [] when state is 0 and calculateCoins was invoked with -1',
        build: () => CoinCubit(),
        act: (cubit) => cubit.calculateCoins(-1),
        expect: const <int>[],
      );
    });

    group('set coin', () {
      blocTest<CoinCubit, int>(
        'emits [3] when setCoin was invoked with 3',
        build: () => CoinCubit(),
        act: (cubit) => cubit.setCoins(3),
        expect: const <int>[3],
      );
    });
  });
}
