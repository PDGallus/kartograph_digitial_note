import 'package:bloc/bloc.dart';

class Cat2Cubit extends Cubit<int> {
  Cat2Cubit(): super(0);

  void setValue(int value) => emit(value);

  void resetState() => emit(0);
}