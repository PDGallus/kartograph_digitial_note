import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/cubit/round_cubit.dart';
import 'package:kartograph_digital_note/gameboard/view/view.dart';

class GameBoard extends StatelessWidget {
  final int index;

  GameBoard(this.index);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorCubit>(create:  (_) => ColorCubit()),
        BlocProvider<DoneCubit>(create: (_) => DoneCubit()),
        BlocProvider<CoinCubit>(create: (_) => CoinCubit()),
        BlocProvider<RoundCubit>(create: (_) => RoundCubit()),
        BlocProvider<SeasonsCubit>(create: (_) => SeasonsCubit()),
      ],
      child: Scaffold(
        appBar: AppBar(title: Text('Lets play')),
        body: Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.grey[350],
          child: MediaQuery
              .of(context)
              .orientation == Orientation.landscape || kIsWeb
              ? GameBoardLandscape(index)
              : GameBoardPortrait(index),
        ),
      ),
    );
  }
}
