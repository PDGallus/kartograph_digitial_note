import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kartograph_digital_note/gameboard/components/grid_field.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/model/grid_field_model.dart';
import 'package:mockito/mockito.dart';

class MockColorCubit extends MockBloc<Color> implements ColorCubit {}

class MockDoneCubit extends MockBloc<bool> implements DoneCubit {}

void main() {
  group('GridField', () {
    ColorCubit colorCubit;
    DoneCubit doneCubit;

    setUp(() {
      colorCubit = MockColorCubit();
      doneCubit = MockDoneCubit();
      when(colorCubit.state).thenReturn(Colors.transparent);
      when(doneCubit.state).thenReturn(false);
    });

    group('set initial state of color to', () {
      testWidgets('transparent, if gridFieldModel.isMountain is false',
              (tester) async {
            await tester.pumpWidget(
              MaterialApp(
                home: BlocProvider.value(
                  value: colorCubit,
                  child: BlocProvider.value(
                    value: doneCubit,
                    child: Scaffold(
                      body: Row(
                        children: [
                          GridField(GridFieldModel()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );

            final GridFieldState gridFieldState = tester.state(
                find.byType(GridField));
            expect(gridFieldState.color, Colors.transparent);
          });

      testWidgets('brown, if gridFieldModel.isMountain is true',
              (tester) async {
            await tester.pumpWidget(
              MaterialApp(
                home: BlocProvider.value(
                  value: colorCubit,
                  child: BlocProvider.value(
                    value: doneCubit,
                    child: Scaffold(
                      body: Row(
                        children: [
                          GridField(GridFieldModel(
                              isMountain: true, fieldColor: Colors.brown)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );

            final GridFieldState gridFieldState = tester.state(
                find.byType(GridField));
            expect(gridFieldState.color, Colors.brown);
          });
    });

    group('set initial state of immutable to', () {
      testWidgets('false if gridFieldModel is not mountain', (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: BlocProvider.value(
              value: colorCubit,
              child: BlocProvider.value(
                value: doneCubit,
                child: Scaffold(
                  body: Row(
                    children: [
                      GridField(GridFieldModel()),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );

        final GridFieldState gridFieldState = tester.state(
            find.byType(GridField));
        expect(gridFieldState.immutable, false);
      });

      testWidgets('true if gridFieldModel is mountain', (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: BlocProvider.value(
              value: colorCubit,
              child: BlocProvider.value(
                value: doneCubit,
                child: Scaffold(
                  body: Row(
                    children: [
                      GridField(GridFieldModel(
                          isMountain: true, fieldColor: Colors.brown)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );

        final GridFieldState gridFieldState = tester.state(
            find.byType(GridField));
        expect(gridFieldState.immutable, true);
      });
    });

    testWidgets('false if gridFieldModel is not wasteland', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: colorCubit,
            child: BlocProvider.value(
              value: doneCubit,
              child: Scaffold(
                body: Row(
                  children: [
                    GridField(GridFieldModel()),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

      final GridFieldState gridFieldState = tester.state(
          find.byType(GridField));
      expect(gridFieldState.immutable, false);
    });

    testWidgets('true if gridFieldModel is wasteland', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: colorCubit,
            child: BlocProvider.value(
              value: doneCubit,
              child: Scaffold(
                body: Row(
                  children: [
                    GridField(GridFieldModel(
                        isWasteland: true, fieldColor: Colors.grey[700])),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

      final GridFieldState gridFieldState = tester.state(
          find.byType(GridField));
      expect(gridFieldState.immutable, true);
    });

    // group('set immutable to true if', () {
    //   when(doneCubit.roundDone()).thenReturn(true);
    //   testWidgets(
    //       'doneCubit emits and grid field color is not transparent',
    //           (tester) async {
    //         await tester.pumpWidget(
    //           MaterialApp(
    //             home: BlocProvider.value(
    //               value: colorCubit,
    //               child: BlocProvider.value(
    //                 value: doneCubit,
    //                 child: Scaffold(
    //                   body: Row(
    //                     children: [
    //                       GridField(GridFieldModel(
    //                           isWasteland: true, fieldColor: Colors.grey[700])),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         );
    //
    //         doneCubit.roundDone();
    //         final GridFieldState gridFieldState = tester.state(
    //             find.byType(GridField));
    //         expect(gridFieldState.immutable, true);
    //       });
    // });
  });
}
