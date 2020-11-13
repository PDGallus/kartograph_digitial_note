import 'package:flutter/material.dart';

class GridFieldModel {
  Color fieldColor;
  bool immutable;
  IconData icon;

  GridFieldModel(
      {this.fieldColor = Colors.transparent,
      this.immutable = false,
      this.icon});
}
