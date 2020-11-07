import 'package:flutter/material.dart';
import 'package:kartograph_digital_note/gameboard/components/components.dart';
import 'package:kartograph_digital_note/gameboard/model/grid_field_model.dart';

class GridColumn extends StatelessWidget {
  List<GridFieldModel> gridFieldModels;
  GridColumn(this.gridFieldModels);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: new List.generate(11, (index) => GridField(gridFieldModels[index])),
      ),
    );
  }
}
