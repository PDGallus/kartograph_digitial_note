import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/custom_icons/custom_icons_icons.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/model/season_model.dart';

class SumUpRow extends StatelessWidget {
  final int index;

  SumUpRow(this.index);

  final textStyle = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${activeCategories[index]['cat1']}: ${context.bloc<SumUpCubit>().state[index].cat1}',
                  style: textStyle,
                ),
                SizedBox(height: 8),
                Text(
                  'Münzen: ${context.bloc<SumUpCubit>().state[index].coins}',
                  style: textStyle,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${activeCategories[index]['cat2']}: ${context.bloc<SumUpCubit>().state[index].cat2}',
                  style: textStyle,
                ),
                SizedBox(height: 8),
                Text(
                  'Monster: ${context.bloc<SumUpCubit>().state[index].monster}',
                  style: textStyle,
                ),
              ],
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Icon(
                CustomIcons.shield_with_banner,
                size: 70,
                color: Colors.white,
              ),
              Positioned(top: 8, child: Text('Gesamt', style: textStyle)),
              Positioned(
                  top: 30,
                  child: Text(
                    '${context.bloc<SumUpCubit>().state[index].total}',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
