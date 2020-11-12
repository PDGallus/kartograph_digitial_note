import 'package:kartograph_digital_note/gameboard/model/summary_model.dart';

int sumUpTotalPoints(List<SummaryModel> state) {
  int sum = 0;
  state.forEach((element) {
    sum += element.total;
  });
  return sum;
}