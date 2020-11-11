import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/cubit/color_cubit.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';

class ColorsChoice extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color iconColor;
  final int index;

  ColorsChoice({this.icon, this.color, this.iconColor = Colors.white, this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ActiveColorCubit, int>(
        builder: (context, state) => FlatButton(
          color: state != index ? color.withOpacity(0.3) : color,
          onPressed: () {
            context.bloc<ColorCubit>().changeColor(color);
            context.bloc<ActiveColorCubit>().setActiveColor(index);
          },
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
