import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/components/components.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';

class PointsArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.brown,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SeasonsSelector(),
              SeasonPoints(),
              FlatButton(
                onPressed: () => context.bloc<RoundCubit>().startRound(),
                child: Text('Nächste Jahreszeit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
