import 'package:bloc/bloc.dart';

class Cat1Cubit extends Cubit<int> {
  Cat1Cubit(): super(0);

  void setValue(int value) => emit(value);

  void resetState() => emit(0);
}