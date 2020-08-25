import 'package:flutter/material.dart';

class SampleAnimatedContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleAnimatedContainer();
}

class _SampleAnimatedContainer extends State<SampleAnimatedContainer> {
  Color _color = Colors.yellow;
  double _size = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AnimatedContainer(
              padding: EdgeInsets.all(_size),
              color: _color,
              duration: Duration(seconds: 2),
              child: Text('Animated\nContainer'),
            ),
            Container(
              padding: EdgeInsets.all(_size),
              color: _color,
              child: Text('Container\n'),
            ),
            Row(
              children: [
                colorChangeButtom(),
                sizeChangeButtom(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget colorChangeButtom() {
    return RaisedButton(
      child: Text('色を変える'),
      onPressed: () {
        setState(() {
          _color = Colors.red;
        });
      },
    );
  }

  Widget sizeChangeButtom() {
    return RaisedButton(
      child: Text('大きさ変える'),
      onPressed: () {
        setState(() {
          _size = _size + 30;
        });
      },
    );
  }
}
