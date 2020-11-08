import 'package:flutter/material.dart';
import 'package:kartograph_digital_note/gameboard/components/components.dart';
import 'package:kartograph_digital_note/gameboard/model/game_board_model.dart';

class Grid extends StatelessWidget {
  final int index;

  Grid(this.index);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        child: Row(
          children: new List.generate(
            11,
            (index) => GridColumn(gameBoard[this.index]["$index"]),
          ),
        ),
      ),
    );
  }
}
