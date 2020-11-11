import 'package:flutter/material.dart';

class GridFieldModel {
  bool isMountain;
  bool hasTemple;
  bool isWasteland;
  Color fieldColor;

  GridFieldModel(
      {this.isMountain = false,
      this.fieldColor = Colors.transparent,
      this.hasTemple = false,
      this.isWasteland = false});
}
