import 'dart:math';

import 'package:flutter/material.dart';

class SampleFloatingActionButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleFloatingActionButton();
}

class _SampleFloatingActionButton extends State<SampleFloatingActionButton> {
  FloatingActionButtonLocation _actionButtonLocation =
      FloatingActionButtonLocation.centerFloat;

//ボタンの位置、たくさんあるな
  List<FloatingActionButtonLocation> locationList = [
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
    FloatingActionButtonLocation.centerTop,
    FloatingActionButtonLocation.endTop,
    FloatingActionButtonLocation.miniCenterDocked,
    FloatingActionButtonLocation.miniCenterFloat,
    FloatingActionButtonLocation.miniCenterTop,
    FloatingActionButtonLocation.miniEndDocked,
    FloatingActionButtonLocation.miniEndFloat,
    FloatingActionButtonLocation.miniEndTop,
    FloatingActionButtonLocation.miniStartDocked,
    FloatingActionButtonLocation.miniStartFloat,
    FloatingActionButtonLocation.miniStartTop,
    FloatingActionButtonLocation.startDocked,
    FloatingActionButtonLocation.startFloat,
    FloatingActionButtonLocation.startTop,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('ボタンの位置を変える'),
          onPressed: () {
            setState(() {
              // ボタンを押すとFloatingActionButtonの配置が変わる
              _actionButtonLocation =
                  locationList[Random().nextInt(locationList.length)];
            });
            print(_actionButtonLocation);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.arrow_right),
      ),
      floatingActionButtonLocation: _actionButtonLocation,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text('ダミー'),
            icon: Icon(Icons.note),
          ),
          BottomNavigationBarItem(
            title: Text('ダミー'),
            icon: Icon(Icons.near_me),
          ),
        ],
      ),
    );
  }
}
