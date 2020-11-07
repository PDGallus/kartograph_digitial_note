import 'package:bloc/bloc.dart';

class SeasonsCubit extends Cubit<int> {
  SeasonsCubit(): super(1);

  void spring() => emit(1);

  void summer() => emit(2);

  void autumn() => emit(3);

  void winter() => emit(4);
}