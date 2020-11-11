import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/custom_icons/custom_icons_icons.dart';
import 'package:kartograph_digital_note/gameboard/components/coins_count.dart';
import 'package:kartograph_digital_note/gameboard/components/colors_choice.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';

class InformationArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.brown,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // BlocBuilder<ColorCubit, Color>(
            //   builder: (context, state) => Padding(
            //     padding: const EdgeInsets.only(top: 8.0),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         Text(
            //           'Aktiv:',
            //           style: TextStyle(color: Colors.white),
            //         ),
            //         SizedBox(
            //           width: 8.0,
            //         ),
            //         Container(
            //           width: 25,
            //           height: 25,
            //           color: state,
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ColorsChoice(
                    icon: Icons.home,
                    color: Colors.red,
                    index: 1,
                  ),
                  ColorsChoice(
                    icon: Icons.nature_rounded,
                    color: Colors.green,
                    index: 2,
                  ),
                  ColorsChoice(
                    icon: Icons.spa_rounded,
                    color: Colors.yellow[700],
                    index: 3,
                  ),
                  ColorsChoice(
                    icon: Icons.waves_rounded,
                    color: Colors.blue[800],
                    index: 4,
                  ),
                  ColorsChoice(
                    icon: CustomIcons.fat_round_monster,
                    color: Colors.purple,
                    index: 5,
                  ),
                  ColorsChoice(
                    icon: Icons.delete_forever_outlined,
                    color: Colors.transparent,
                    index: 6,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CoinsCount(),
                  RaisedButton(
                    onPressed: () => context.bloc<DoneCubit>().roundDone(),
                    child: Text('Zug beenden'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BlocBuilder<SumUpCubit, int>(
                    builder: (context, state) => Text(
                      'Punkte: ${context.bloc<SumUpCubit>().state}',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () => context.bloc<RoundCubit>().finishRound(),
                    child: Text('Ende Jahreszeit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
