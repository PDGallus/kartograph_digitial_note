import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/start_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MapCubit>(
            create: (_) => MapCubit()),
        BlocProvider<SeasonsCubit>(create: (_) => SeasonsCubit()),
        BlocProvider<SumUpCubit>(create: (_) => SumUpCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          backgroundColor: Colors.brown[300],
          body: Center(
            child: StartPage(),
          ),
        ),
      ),
    );
  }
}
