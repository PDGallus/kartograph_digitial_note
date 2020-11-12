import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/model/summary_model.dart';

void main() {
  group('SumUpCubit', () {
    test('initial state is 0', () {
      expect(SumUpCubit().state, new List<SummaryModel>());
    });

    // group('sum up', () {
    //   blocTest<SumUpCubit, List<SummaryModel>>(
    //     'emit [1] when state is 0 and sumUp is invoked with 1',
    //     build: () => SumUpCubit(),
    //     act: (cubit) => cubit.sumUp(SummaryModel()),
    //     expect: const <List<SummaryModel>>[],
    //   );
    //
    //   blocTest<SumUpCubit, List<SummaryModel>>(
    //     'emit [6] when state is 2 and sumUp is invoked with 4',
    //     build: () => SumUpCubit()..emit(2),
    //     act: (cubit) => cubit.sumUp(4),
    //     expect: const <int>[6],
    //   );
    // });

    // group('reset state', () {
    //   blocTest<SumUpCubit, List<SummaryModel>>(
    //     'emits 0 when resetState is invoked',
    //     build: () => SumUpCubit()..emit(3),
    //     act: (cubit) => cubit.resetState(),
    //     expect: const <List<SummaryModel>>[],
    //   );
    // });
  });
}
