import 'package:bloc/bloc.dart';

class MapCubit extends Cubit<int> {
  MapCubit(): super(0);

  void setMap(value) => emit(value);
}