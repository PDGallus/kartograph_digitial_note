
import 'package:bloc/bloc.dart';

class DoneCubit extends Cubit<bool> {
  DoneCubit() : super(false);

  void roundDone() => emit(!state);

}