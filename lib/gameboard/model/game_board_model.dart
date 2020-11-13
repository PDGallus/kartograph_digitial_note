import 'package:flutter/material.dart';
import 'package:kartograph_digital_note/gameboard/model/grid_field_model.dart';

List<Map<String, List<GridFieldModel>>> gameBoard = [
  {
    "0": new List.generate(11, (index) => GridFieldModel()),
    "1": [
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(icon: Icons.account_balance),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(icon: Icons.account_balance),
      GridFieldModel(),
      GridFieldModel(),
    ],
    "2": [
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(
          immutable: true, icon: Icons.landscape, fieldColor: Colors.brown),
      GridFieldModel(),
      GridFieldModel(),
    ],
    "3": [
      GridFieldModel(),
      GridFieldModel(
          immutable: true, icon: Icons.landscape, fieldColor: Colors.brown),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
    ],
    "4": new List.generate(11, (index) => GridFieldModel()),
    "5": [
      GridFieldModel(),
      GridFieldModel(icon: Icons.account_balance),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(
          immutable: true, icon: Icons.landscape, fieldColor: Colors.brown),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(icon: Icons.account_balance),
      GridFieldModel(),
    ],
    "6": new List.generate(11, (index) => GridFieldModel()),
    "7": [
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(
          immutable: true, icon: Icons.landscape, fieldColor: Colors.brown),
      GridFieldModel(),
    ],
    "8": [
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(
          immutable: true, icon: Icons.landscape, fieldColor: Colors.brown),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
    ],
    "9": [
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(icon: Icons.account_balance),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(icon: Icons.account_balance),
      GridFieldModel(),
      GridFieldModel(),
    ],
    "10": new List.generate(11, (index) => GridFieldModel()),
  },
  {
    "0": new List.generate(11, (index) => GridFieldModel()),
    "1": [
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(icon: Icons.account_balance),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
    ],
    "2": [
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(icon: Icons.account_balance),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(
          immutable: true, icon: Icons.landscape, fieldColor: Colors.brown),
      GridFieldModel(),
    ],
    "3": [
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(
          immutable: true, icon: Icons.landscape, fieldColor: Colors.brown),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(icon: Icons.account_balance),
      GridFieldModel(),
    ],
    "4": [
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(immutable: true, fieldColor: Colors.grey[700]),
      GridFieldModel(immutable: true, fieldColor: Colors.grey[700]),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
    ],
    "5": [
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(immutable: true, fieldColor: Colors.grey[700]),
      GridFieldModel(immutable: true, fieldColor: Colors.grey[700]),
      GridFieldModel(immutable: true, fieldColor: Colors.grey[700]),
      GridFieldModel(immutable: true, fieldColor: Colors.grey[700]),
      GridFieldModel(
          immutable: true, icon: Icons.landscape, fieldColor: Colors.brown),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
    ],
    "6": [
      GridFieldModel(),
      GridFieldModel(icon: Icons.account_balance),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(icon: Icons.account_balance),
      GridFieldModel(immutable: true, fieldColor: Colors.grey[700]),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
    ],
    "7": new List.generate(11, (index) => GridFieldModel()),
    "8": [
      GridFieldModel(),
      GridFieldModel(
          immutable: true, icon: Icons.landscape, fieldColor: Colors.brown),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(icon: Icons.account_balance),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
    ],
    "9": [
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(),
      GridFieldModel(
          immutable: true, icon: Icons.landscape, fieldColor: Colors.brown),
      GridFieldModel(),
      GridFieldModel(),
    ],
    "10": new List.generate(11, (index) => GridFieldModel()),
  }
];
