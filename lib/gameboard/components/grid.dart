import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/components/components.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/model/game_board_model.dart';
import 'package:kartograph_digital_note/gameboard/model/random_game_board_model.dart';

class Grid extends StatelessWidget {
  final randomGameBoard = new RandomGameBoardModel();

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        child: Row(
          children: new List.generate(
            11,
                (index) {
              if (context.bloc<MapCubit>().state == 3 && gameBoard.length < 4) {
                randomGameBoard.createRandomMap();
              }
              return GridColumn(gameBoard[context
                  .bloc<MapCubit>()
                  .state][index]);
            },
          ),
        ),
      ),
    );
  }
}
