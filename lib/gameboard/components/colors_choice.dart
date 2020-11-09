import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/cubit/color_cubit.dart';

class ColorsChoice extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color iconColor;

  ColorsChoice({this.icon, this.color, this.iconColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () => context.bloc<ColorCubit>().changeColor(color),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
