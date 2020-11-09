import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/components/components.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/cubit/sum_up_cubit.dart';
import 'package:kartograph_digital_note/gameboard/model/season_model.dart';

class PointsArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    sumUpPoints() {
      Cat1Cubit cat1 = context.bloc<Cat1Cubit>();
      Cat2Cubit cat2 = context.bloc<Cat2Cubit>();
      CoinCubit coins = context.bloc<CoinCubit>();
      MonsterCubit monster = context.bloc<MonsterCubit>();
      if (monster.state < 0) {
        monster.setValue(monster.state * -1);
      }
      int sum = cat1.state + cat2.state + coins.state - monster.state;
      context.bloc<SumUpCubit>().sumUp(sum);
      cat1.resetState();
      cat2.resetState();
      monster.resetState();
    }

    resetAllCubits() {
      context.bloc<Cat1Cubit>().resetState();
      context.bloc<Cat2Cubit>().resetState();
      context.bloc<MonsterCubit>().resetState();
      context.bloc<SeasonsCubit>().resetState();
      context.bloc<SumUpCubit>().resetState();
    }

    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.brown,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SeasonPoints(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    onPressed: () => context.bloc<RoundCubit>().startRound(),
                    child: Text('Zurück'),
                  ),
                  BlocBuilder<SeasonsCubit, int>(
                    builder: (context, state) {
                      return state < 3
                          ? RaisedButton(
                              onPressed: () {
                                context.bloc<SeasonsCubit>().nextSeason();
                                sumUpPoints();
                                context.bloc<RoundCubit>().startRound();
                                FocusScope.of(context).unfocus();
                              },
                              child: Text(
                                  'Zum ${activeCategories[context.bloc<SeasonsCubit>().state + 1]['text']}'),
                            )
                          : RaisedButton(
                              onPressed: () {
                                sumUpPoints();
                                return showDialog(
                                    context: context,
                                    builder: (_) => AlertDialog(
                                          title: Text('Gesamtpunktzahl'),
                                          content: Text(
                                              'Du hast ${context.bloc<SumUpCubit>().state} Punkte erreicht!'),
                                          actions: [
                                            FlatButton(
                                              child: Text('Ok'),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                resetAllCubits();
                                                Navigator.pop(context);
                                              },
                                            )
                                          ],
                                        ));
                              },
                              child: Text('Gesamtpunkte'),
                            );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
