import 'package:flutter/material.dart';
import 'package:kartograph_digital_note/gameboard/components/components.dart';
import 'package:kartograph_digital_note/gameboard/view/view.dart';

class GameBoardLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Grid(),
        InformationArea(),
      ],
    );
  }
}
