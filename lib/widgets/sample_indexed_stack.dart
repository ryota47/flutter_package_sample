import 'dart:math';

import 'package:flutter/material.dart';

class SampleIndexedStack extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleIndexedStack();
}

class _SampleIndexedStack extends State<SampleIndexedStack>
    with SingleTickerProviderStateMixin {
  int _index = 0;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 3000),
    );
  }
// Tranform付けたい

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexedStack'),
      ),
      body: Transform.translate(
        offset: Offset(0, 0),
        child: Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(-pi * animationController.value / 2),
          alignment: Alignment.centerLeft,
          child: IndexedStack(
            index: _index,
            children: [
              Transform.translate(
                offset: Offset(0, 0),
                child: Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateY(-pi * animationController.value / 2),
                  alignment: Alignment.centerRight,
                  child: Image.asset('images/sample1.png'),
                ),
              ),
              Transform.translate(
                offset: Offset(0, 0),
                child: Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateY(-pi * animationController.value / 2),
                  alignment: Alignment.centerLeft,
                  child: Image.asset('images/sample2.png'),
                ),
              ),
              // AnimatedContainer(
              //   duration: Duration(seconds: 1),
              //   child: Image.asset('images/sample1.png'),
              // ),
              // AnimatedContainer(
              //   duration: Duration(seconds: 1),
              //   child: Image.asset('images/sample2.png'),
              // ),
              // Image.asset('images/sample1.png'),
              // Image.asset('images/sample2.png'),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          setState(() {
            _index = 1;
          });
        },
      ),
    );
  }
}
