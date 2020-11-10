import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';

void main() {
  group('ColorCubit', () {
    test('initial state is Colors.transparent', () {
      expect(ColorCubit().state, Colors.transparent);
    });

    group('change color', () {
      blocTest<ColorCubit, Color>(
        'emit [Colors.red] when state is Colors.transparent and changeColor is invoked with Colors.red',
        build: () => ColorCubit(),
        act: (cubit) => cubit.changeColor(Colors.red),
        expect: const <Color>[Colors.red],
      );
    });
  });
}
