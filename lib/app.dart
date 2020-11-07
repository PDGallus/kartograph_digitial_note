import 'package:flutter/material.dart';
import 'package:kartograph_digital_note/gameboard/game_board.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Kartograph: Digitaler Spielplan'),
            SizedBox(height: 50.0),
            RaisedButton(
              child: Text('Neues Spiel'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GameBoard())
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
