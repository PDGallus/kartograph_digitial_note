import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/custom_icons/custom_icons_icons.dart';
import 'package:kartograph_digital_note/gameboard/components/coin_handler.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';

class CoinsCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CoinHandler(-1),
          SizedBox(width: 16),
          Icon(CustomIcons.coin, color: Colors.yellow[800]),
          SizedBox(width: 8),
          BlocBuilder<CoinCubit, int>(
              builder: (context, state) => Text('$state', style: TextStyle(color: Colors.white, fontSize: 18),)),
          SizedBox(width: 8),
          CoinHandler(1),
        ],
      ),
    );
  }
}
