import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/components/components.dart';
import 'package:kartograph_digital_note/gameboard/cubit/color_cubit.dart';
import 'package:kartograph_digital_note/gameboard/model/game_board_model.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: BlocBuilder<ColorCubit, Color>(
        builder: (context, state) {
          return Container(
              child: Row(
                  children: new List.generate(11, (index) => GridColumn(gameBoard["$index"]))));
        },
      ),
    );
  }
}
