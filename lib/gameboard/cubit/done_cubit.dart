
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class DoneCubit extends Cubit<bool> {
  DoneCubit() : super(false);

  void roundDone() => emit(!state);

}