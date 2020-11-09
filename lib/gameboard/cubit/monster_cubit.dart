import 'package:bloc/bloc.dart';

class MonsterCubit extends Cubit<int> {
  MonsterCubit(): super(0);

  void setValue(int value) => emit(value);

  void resetState() => emit(0);
}