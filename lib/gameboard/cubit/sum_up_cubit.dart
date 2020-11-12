import 'package:bloc/bloc.dart';
import 'package:kartograph_digital_note/gameboard/model/summary_model.dart';

class SumUpCubit extends Cubit<List<SummaryModel>> {
  SumUpCubit(): super(new List<SummaryModel>());

  void sumUp(SummaryModel summaryModel) {
    state.add(summaryModel);
    emit(state);
  }

  void resetState() => emit(new List<SummaryModel>());
}