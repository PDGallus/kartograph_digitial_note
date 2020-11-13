import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/app.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/model/season_model.dart';
import 'package:kartograph_digital_note/gameboard/view/view.dart';

class GameBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> _onBackPressed() {
      return showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Spiel beenden?'),
              content: Text('Soll das Spiel beendet werden?'),
              actions: <Widget>[
                FlatButton(
                  onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => App()),
                    (Route<dynamic> route) => false,
                  ),
                  child: Text(
                    "Ja",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                SizedBox(height: 16),
                FlatButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: Text("Nein"),
                ),
              ],
            ),
          ) ??
          false;
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider<ColorCubit>(create: (_) => ColorCubit()),
        BlocProvider<DoneCubit>(create: (_) => DoneCubit()),
        BlocProvider<CoinCubit>(create: (_) => CoinCubit()),
        BlocProvider<RoundCubit>(create: (_) => RoundCubit()),
        BlocProvider<Cat1Cubit>(create: (_) => Cat1Cubit()),
        BlocProvider<Cat2Cubit>(create: (_) => Cat2Cubit()),
        BlocProvider<MonsterCubit>(create: (_) => MonsterCubit()),
        BlocProvider<ActiveColorCubit>(create: (_) => ActiveColorCubit()),
      ],
      child: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          backgroundColor: Colors.brown[300],
          title: BlocBuilder<SeasonsCubit, int>(
            builder: (context, state) =>
                Row(
                  children: [
                    Text(activeCategories[state]['text']),
                    SizedBox(width: 8),
                    Icon(activeCategories[state]['icon']),
                  ],
                ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: _onBackPressed,
          ),
        ),
        body: Builder(
          builder: (context) => SingleChildScrollView(
            child: Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height -
                    Scaffold
                        .of(context)
                        .appBarMaxHeight,
                padding: EdgeInsets.all(16.0),
                child: Container(
                  color: Colors.grey[350],
                  child: MediaQuery
                      .of(context)
                      .orientation ==
                      Orientation.landscape ||
                      kIsWeb
                      ? GameBoardLandscape()
                      : GameBoardPortrait(),
                )),
          ),
        ),
      ),
    );
  }
}
