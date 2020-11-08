import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/components/components.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/view/view.dart';

class GameBoardLandscape extends StatelessWidget {
  final int index;

  GameBoardLandscape(this.index);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Grid(index),
        BlocBuilder<RoundCubit, bool>(
          builder: (context, state) {
            return state ? PointsArea() : InformationArea();
          },
        ),
      ],
    );
  }
}
