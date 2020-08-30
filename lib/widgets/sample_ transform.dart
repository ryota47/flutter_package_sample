import 'dart:math';

import 'package:flutter/material.dart';

class SampleTransform extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleTransform();
}

class _SampleTransform extends State<SampleTransform>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  Offset _offset = Offset.zero;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform'),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        child: Transform(
            // Transform widget
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001) // perspective
              // ..rotateX(0.01 * _offset.dy) // changed
              ..rotateY(-0.01 * _offset.dx), // changed
            alignment: FractionalOffset.center,
            child: GestureDetector(
              // new
              onPanUpdate: (details) =>
                  setState(() => _offset += details.delta),
              onDoubleTap: () => setState(() => _offset = Offset.zero),
              child: redContainder(),
            )),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellow,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
    );
  }

  redContainder() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
      child: Center(
        child: Text('結局使いこなせない。\nいいUI見つけたらそれ練習がてら作ろ',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}
