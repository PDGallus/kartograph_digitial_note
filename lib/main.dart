import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:kartograph_digital_note/app.dart';
import 'package:kartograph_digital_note/gameboard/gameboard_observer.dart';

void main() {
  Bloc.observer = GameboardObserver();
  runApp(App());
}
