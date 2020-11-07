import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/custom_icons/custom_icons_icons.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';

class SeasonsSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          onPressed: () => context.bloc<SeasonsCubit>().spring(),
          child: Icon(CustomIcons.flower, color: Colors.white),
        ),
        FlatButton(
          onPressed: () => context.bloc<SeasonsCubit>().summer(),
          child: Icon(Icons.wb_sunny, color: Colors.white),
        ),
        FlatButton(
          onPressed: () => context.bloc<SeasonsCubit>().autumn(),
          child: Icon(CustomIcons.leaf_fall, color: Colors.white),
        ),
        FlatButton(
          onPressed: () => context.bloc<SeasonsCubit>().winter(),
          child: Icon(Icons.ac_unit_rounded, color: Colors.white),
        ),
      ],
    );
  }
}
