import 'package:bloc/bloc.dart';

class SeasonsCubit extends Cubit<int> {
  SeasonsCubit() : super(0);

  void nextSeason() {
    if (state < 3) {
      emit(state + 1);
    }
  }

  void resetState() => emit(0);
}
