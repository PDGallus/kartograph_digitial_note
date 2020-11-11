import 'package:bloc/bloc.dart';

class ActiveColorCubit extends Cubit<int> {
  ActiveColorCubit(): super(0);

  setActiveColor(int value) => emit(value);

  resetState() => emit(0);
}