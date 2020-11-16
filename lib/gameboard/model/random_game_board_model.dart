import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kartograph_digital_note/gameboard/model/game_board_model.dart';
import 'package:kartograph_digital_note/gameboard/model/grid_field_model.dart';

class RandomGameBoardModel {
  final _random = new Random();
  final int templesAmount = 6;
  final int mountainsAmount = 5;
  final int wastelandsAmount = 7;

  RandomGameBoardModel();

  List<GridFieldModel> _getNineByNineBlankMap() {
    return List.generate(81, (index) => empty);
  }

  List<GridFieldModel> _manipulateMap(
      int amount, GridFieldModel model, List<GridFieldModel> list) {
    for (int i = 0; i < amount; i++) {
      int index = 0 + _random.nextInt(81 - 0);
      while (list[index].fieldColor != Colors.transparent ||
          list[index].icon != null) {
        index = 0 + _random.nextInt(81 - 0);
      }
      list.removeAt(index);
      list.insert(index, model);
    }
    return list;
  }

  List<List<GridFieldModel>> _generateElevenByElevenMap(
      List<List<GridFieldModel>> nineByNineMap) {
    List<List<GridFieldModel>> tempMap = [];
    tempMap.add(List.generate(11, (index) => empty));
    for (List<GridFieldModel> list in nineByNineMap) {
      list.insert(0, empty);
      list.add(empty);
      tempMap.add(list);
    }
    tempMap.add(List.generate(11, (index) => empty));
    return tempMap;
  }

  void createRandomMap() {
    List<GridFieldModel> currentMap = _getNineByNineBlankMap();
    currentMap = _manipulateMap(templesAmount, temple, currentMap);
    currentMap = _manipulateMap(mountainsAmount, mountain, currentMap);
    currentMap = _manipulateMap(wastelandsAmount, wasteland, currentMap);
    List<List<GridFieldModel>> chunks = [];
    for (var i = 0; i < currentMap.length; i += 9) {
      chunks.add(currentMap.sublist(
          i, i + 9 > currentMap.length ? currentMap.length : i + 9));
    }
    gameBoard.add(_generateElevenByElevenMap(chunks));
  }
}
