import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/model/summary_model.dart';

void main() {
  final model = SummaryModel();
  group('SumUpCubit', () {
    test('initial state is 0', () {
      expect(SumUpCubit().state, new List<SummaryModel>());
    });

    group('sum up', () {
      blocTest<SumUpCubit, List<SummaryModel>>(
        'emit [model] when state is [] and sumUp is invoked',
        build: () => SumUpCubit(),
        act: (cubit) => cubit.sumUp(model),
        expect: <List<SummaryModel>>[
          [model]
        ],
      );

      blocTest<SumUpCubit, List<SummaryModel>>(
        'emit [model, model] when state is [model] and sumUp is invoked',
        build: () => SumUpCubit(),
        act: (cubit) => cubit..sumUp(model)..sumUp(model),
        expect: <List<SummaryModel>>[
          [model, model]
        ],
      );
    });
  });
}
