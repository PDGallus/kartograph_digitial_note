import 'package:bloc/bloc.dart';

class SumUpCubit extends Cubit<int> {
  SumUpCubit(): super(0);

  void sumUp(int value) => emit(state + value);

  void resetState() => emit(0);
}