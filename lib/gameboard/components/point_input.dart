import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/model/season_model.dart';

class PointInput extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(activeCategories[context.bloc<SeasonsCubit>().state]['cat1']),
        ],
      ),
    );
  }
}
