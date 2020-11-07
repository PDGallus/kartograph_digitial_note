import 'package:bloc/bloc.dart';

class CoinCubit extends Cubit<int> {
  CoinCubit(): super(0);

  void calculateCoins(int value) => {
    if (value != -1 || value == -1 && state > 0) {
      emit(state + value)
    }
  };

}