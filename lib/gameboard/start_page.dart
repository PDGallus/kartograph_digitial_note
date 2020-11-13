import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartograph_digital_note/gameboard/cubit/cubit.dart';
import 'package:kartograph_digital_note/gameboard/game_board.dart';
import 'package:package_info/package_info.dart';

class StartPage extends StatelessWidget {
  Future<PackageInfo> _getPackage() async {
    return await PackageInfo.fromPlatform();
  }

  @override
  Widget build(BuildContext context) {
    navigateToGameboard(int mapIndex) {
      context.bloc<MapCubit>().setMap(mapIndex);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GameBoard()));
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
              top: 50,
              child: Image.asset(
                'assets/navigation.png',
                width: 150,
              )),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Kartograph: Digitaler Spielplan',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 25.0),
              RaisedButton(
                child: Text('Weites Land'),
                onPressed: () => navigateToGameboard(0),
              ),
              RaisedButton(
                child: Text('Die Ödnis'),
                onPressed: () => navigateToGameboard(1),
              ),
              RaisedButton(
                child: Text('Drittes Level'),
                onPressed: () => navigateToGameboard(2),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.info_outline_rounded,
                  color: Colors.white,
                ),
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => FutureBuilder(
                    future: _getPackage(),
                    builder: (context, AsyncSnapshot<PackageInfo> snapshot) =>
                        AboutDialog(
                      applicationName: snapshot.data.appName,
                      applicationVersion: '${snapshot.data.version}',
                      applicationIcon: Image.asset(
                        'assets/navigation.png',
                        width: 50,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
