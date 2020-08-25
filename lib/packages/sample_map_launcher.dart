import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';

class SampleMapLauncher extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleMapLauncher();
}

enum LaunchMode { marker, directions }

class _SampleMapLauncher extends State<SampleMapLauncher> {
  int selectedTabIndex = 0;

  // List<Widget> widgets = [ShowMarker(), ShowDirections()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('map_launcher'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text('マップを開く'),
            onPressed: () {
              launchMap();
            },
          ),
          RaisedButton(
            child: Text('Googleマップを開く'),
            onPressed: () {
              launchGooGleMap();
            },
          )
        ],
      ),
    );
  }

  launchGooGleMap() async {
    if (await MapLauncher.isMapAvailable(MapType.apple)) {
      await MapLauncher.showMarker(
        mapType: MapType.apple,
        coords: Coords(35.6759323, 139.7450316),
        title: '国会議事堂',
        description: 'ああああ',
        zoom: 16,

      );
    }
  }

  launchMap() async {
    final availableMaps = await MapLauncher.installedMaps;
    print(availableMaps);

    await availableMaps.first.showMarker(
      coords: Coords(35.6759323, 139.7450316),
      title: "国会議事堂",
    );
  }
}
