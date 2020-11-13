import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/model/grid_field_model.dart';

class GridField extends StatefulWidget {
  final GridFieldModel gridFieldModel;

  GridField(this.gridFieldModel);

  @override
  GridFieldState createState() => GridFieldState();
}

class GridFieldState extends State<GridField> {
  Color color;
  bool immutable = false;

  @override
  void initState() {
    color = widget.gridFieldModel.fieldColor;
    immutable = widget.gridFieldModel.immutable;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: BlocBuilder<DoneCubit, bool>(
        buildWhen: (prev, curr) {
          if (color != Colors.transparent) {
            setState(() {
              immutable = true;
            });
          }
          return true;
        },
        builder: (context, doneState) {
          changeColor() {
            setState(() {
              color = context.bloc<ColorCubit>().state;
            });
          }

          return InkWell(
            onTap: immutable ? () {} : changeColor,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Column(
                  children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.brown),
                            color: color),
                      ),
                    ),
                  ],
                ),
                Opacity(
                  opacity: widget.gridFieldModel.icon == Icons.account_balance
                      ? 0.5
                      : 1,
                  child: Icon(
                    widget.gridFieldModel.icon,
                    color: widget.gridFieldModel.icon == Icons.account_balance
                        ? Colors.grey[700]
                        : Colors.brown[300],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
