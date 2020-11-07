import 'package:bloc/bloc.dart';

class RoundCubit extends Cubit<bool> {
  RoundCubit(): super(false);

  void finishRound() => emit(true);

  void startRound() => emit(false);
}