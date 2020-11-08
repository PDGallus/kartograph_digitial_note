import 'package:flutter/material.dart';
import 'package:kartograph_digital_note/gameboard/game_board.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Kartograph: Digitaler Spielplan',
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(height: 50.0),
        RaisedButton(
          child: Text('Weites Land'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => GameBoard(0)));
          },
        ),
        RaisedButton(
          child: Text('Die Ödnis'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => GameBoard(1)));
          },
        ),
      ],
    );
  }
}
