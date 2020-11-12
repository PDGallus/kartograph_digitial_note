import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/components/sum_up_row.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/model/sum_up_util.dart';

class SumUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[300],
        title: Text('Zusammenfassung'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            context.bloc<SumUpCubit>().resetState();
            context.bloc<SeasonsCubit>().resetState();
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.brown,
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: context.bloc<SumUpCubit>().state.length,
              itemBuilder: (context, index) => SumUpRow(index),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 21),
                  child: Text(
                    'Insgesamt: ${sumUpTotalPoints(context.bloc<SumUpCubit>().state)}',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
