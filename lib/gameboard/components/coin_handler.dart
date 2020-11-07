import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/cubit/coin_cubit.dart';
import 'package:kartograph_digital_note/shapes/triangle.dart';

class CoinHandler extends StatelessWidget {
  final int value;

  CoinHandler(this.value);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.bloc<CoinCubit>().calculateCoins(value),
      child: RotatedBox(
        quarterTurns: value,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            CustomPaint(
              size: Size(30, 30),
              painter: TriangleShape(),
            ),
            Positioned(top: 9, child: Icon(value > 0 ? Icons.add : Icons.replay, size: 20,color: Colors.white,)),
          ],
        ),
      ),
    );
  }
}
