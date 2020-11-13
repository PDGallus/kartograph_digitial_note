import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/model/season_model.dart';

class SeasonPoints extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

    final textStyle = TextStyle(color: Colors.white, fontSize: 16);

    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Punkte für den ${activeCategories[context.bloc<SeasonsCubit>().state]['text']}',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                activeCategories[context.bloc<SeasonsCubit>().state]['icon'],
                color: Colors.white,
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Theme(
                          data: ThemeData(primaryColor: Colors.white),
                          child: TextField(
                            onChanged: (text) => context
                                .bloc<Cat1Cubit>()
                                .setValue(int.parse(text)),
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () => node.nextFocus(),
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                            ],
                            style: textStyle,
                            decoration: InputDecoration(
                              labelText:
                                  'Auftrag  ${activeCategories[context.bloc<SeasonsCubit>().state]['cat1']}',
                              labelStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Theme(
                          data: ThemeData(primaryColor: Colors.white),
                          child: TextField(
                            onChanged: (text) =>
                                context
                                    .bloc<Cat2Cubit>()
                                    .setValue(int.parse(text)),
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () => node.nextFocus(),
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                            ],
                            style: textStyle,
                            decoration: InputDecoration(
                              labelText:
                              'Auftrag  ${activeCategories[context
                                  .bloc<SeasonsCubit>()
                                  .state]['cat2']}',
                              labelStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Theme(
                          data: ThemeData(primaryColor: Colors.white),
                          child: TextFormField(
                            initialValue: '${context
                                .bloc<CoinCubit>()
                                .state}',
                            onChanged: (text) =>
                            text.isEmpty
                                ? {}
                                : context
                                .bloc<CoinCubit>()
                                .setCoins(int.parse(text)),
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () => node.nextFocus(),
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                            ],
                            style: textStyle,
                            decoration: InputDecoration(
                              labelText: 'Münzen',
                              labelStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Theme(
                          data: ThemeData(primaryColor: Colors.white),
                          child: TextField(
                            onChanged: (text) =>
                                context
                                    .bloc<MonsterCubit>()
                                    .setValue(int.parse(text)),
                            textInputAction: TextInputAction.done,
                            onEditingComplete: () => node.nextFocus(),
                            cursorColor: Colors.white,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                            ],
                            style: textStyle,
                            decoration: InputDecoration(
                              labelText: 'Monster',
                              labelStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
