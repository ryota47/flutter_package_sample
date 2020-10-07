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
      ),
      body: Stack(
        children: [
          Container(
            child: Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001) 
                ..rotateY(-0.05 * _offset.dx), 
              alignment: FractionalOffset.centerLeft,
              child: GestureDetector(
                onPanUpdate: (details) =>
                    setState(() => _offset += details.delta),
                onDoubleTap: () => setState(() => _offset = Offset.zero),
                child: redContainder(),
              ),
            ),
          ),
          Container(
            child: Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(-0.05 * _offset.dx + 1.57), 
              alignment: FractionalOffset.centerLeft,
              child: GestureDetector(
                onPanUpdate: (details) =>
                    setState(() => _offset += details.delta),
                onDoubleTap: () => setState(() => _offset = Offset.zero),
                child: blueContainder(),
              ),
            ),
          ),
          Container(
            child: Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(-0.05 * _offset.dx + 3.14),
              alignment: FractionalOffset.centerLeft,
              child: GestureDetector(
                onPanUpdate: (details) =>
                    setState(() => _offset += details.delta),
                onDoubleTap: () => setState(() => _offset = Offset.zero),
                child: yellowContainder(),
              ),
            ),
          ),
                    Container(
            child: Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001) 
                ..rotateY(-0.05 * _offset.dx + 4.71),
              alignment: FractionalOffset.centerLeft,
              child: GestureDetector(
                onPanUpdate: (details) =>
                    setState(() => _offset += details.delta),
                onDoubleTap: () => setState(() => _offset = Offset.zero),
                child: greenContainder(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  redContainder() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
      child: Center(
        child: Text(
          'あか',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  blueContainder() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
      child: Center(
        child: Text(
          'あおい',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  yellowContainder() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellow,
      child: Center(
        child: Text(
          'きいろ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

    greenContainder() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.green,
      child: Center(
        child: Text(
          'みどり',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
