import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/game_board.dart';
import 'package:package_info/package_info.dart';

class StartPage extends StatelessWidget {
  Future<String> _getPackage() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return '${packageInfo.version}+${packageInfo.buildNumber}';
  }

  @override
  Widget build(BuildContext context) {
    String version;
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      version = '${packageInfo.version}+${packageInfo.buildNumber}';
    });

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Image.asset('assets/navigation.png', width: 150,),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Kartograph: Digitaler Spielplan',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 25.0),
              RaisedButton(
                child: Text('Weites Land'),
                onPressed: () {
                  context.bloc<MapCubit>().setMap(0);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GameBoard()));
                },
              ),
              RaisedButton(
                child: Text('Die Ödnis'),
                onPressed: () {
                  context.bloc<MapCubit>().setMap(1);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GameBoard()));
                },
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FutureBuilder(
                future: _getPackage(),
                builder: (context, snapshot) =>
                    snapshot.hasData ? Text(snapshot.data) : Text(''),
              ),
            ],
          )
        ],
      ),
    );
  }
}
