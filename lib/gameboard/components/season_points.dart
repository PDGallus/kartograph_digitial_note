import 'package:flutter/material.dart';

class SeasonPoints extends StatelessWidget {

  SeasonPoints();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              Text('A'),
              Text('B'),
            ],
          ),
        ],
      ),
    );
  }
}
