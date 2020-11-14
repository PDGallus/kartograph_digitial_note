import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kartograph_digital_note/gameboard/model/game_board_model.dart';
import 'package:kartograph_digital_note/gameboard/model/grid_field_model.dart';

class RandomGameBoardModel {
  final _random = new Random();
  int templesAmount = 6;
  int mountainsAmount = 5;
  int wastelandsAmount = 7;
  List<List<GridFieldModel>> randomGameBoard = [];

  RandomGameBoardModel();

  List<GridFieldModel> getBlankMap() {
    return List.generate(121, (index) => empty);
  }

  List<GridFieldModel> manipulateMap(
      int amount, GridFieldModel model, List<GridFieldModel> list) {
    for (int i = 0; i < amount; i++) {
      int index = 0 + _random.nextInt(121 - 0);
      while (list[index].fieldColor != Colors.transparent ||
          list[index].icon != null) {
        index = 0 + _random.nextInt(121 - 0);
      }
      list.removeAt(index);
      list.insert(index, model);
    }
    return list;
  }

  void createRandomMap() {
    gameBoard = gameBoard.sublist(0, 3);
    List<GridFieldModel> currentMap = getBlankMap();
    currentMap = manipulateMap(templesAmount, temple, currentMap);
    currentMap = manipulateMap(mountainsAmount, mountain, currentMap);
    currentMap = manipulateMap(wastelandsAmount, wasteland, currentMap);
    List<List<GridFieldModel>> chunks = [];
    for (var i = 0; i < currentMap.length; i += 11) {
      chunks.add(currentMap.sublist(
          i, i + 11 > currentMap.length ? currentMap.length : i + 11));
    }
    gameBoard.add(chunks);
  }
}
