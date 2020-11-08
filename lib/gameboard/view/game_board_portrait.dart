import 'package:flutter/material.dart';
import 'package:kartograph_digital_note/gameboard/components/components.dart';
import 'package:kartograph_digital_note/gameboard/view/view.dart';

class GameBoardPortrait extends StatelessWidget {
  final int index;

  GameBoardPortrait(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Grid(index),
        InformationArea(),
      ],
    );
  }
}
