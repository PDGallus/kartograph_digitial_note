import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/model/season_model.dart';
import 'package:kartograph_digital_note/gameboard/view/view.dart';

class GameBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorCubit>(create: (_) => ColorCubit()),
        BlocProvider<DoneCubit>(create: (_) => DoneCubit()),
        BlocProvider<CoinCubit>(create: (_) => CoinCubit()),
        BlocProvider<RoundCubit>(create: (_) => RoundCubit()),
        BlocProvider<Cat1Cubit>(create: (_) => Cat1Cubit()),
        BlocProvider<Cat2Cubit>(create: (_) => Cat2Cubit()),
        BlocProvider<MonsterCubit>(create: (_) => MonsterCubit()),
        BlocProvider<SumUpCubit>(create: (_) => SumUpCubit()),
        BlocProvider<ActiveColorCubit>(create: (_) => ActiveColorCubit()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: BlocBuilder<SeasonsCubit, int>(
            builder: (context, state) => Row(
              children: [
                Text(activeCategories[state]['text']),
                SizedBox(width: 8),
                Icon(activeCategories[state]['icon']),
              ],
            ),
          ),
        ),
        body: Builder(
          builder: (context) => SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height -
                  Scaffold.of(context).appBarMaxHeight,
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[350],
              child:
                  MediaQuery.of(context).orientation == Orientation.landscape ||
                          kIsWeb
                      ? GameBoardLandscape()
                      : GameBoardPortrait(),
            ),
          ),
        ),
      ),
    );
  }
}
