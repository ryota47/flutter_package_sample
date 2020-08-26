import 'package:flutter/material.dart';

class SampleOpacity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleOpacity();
}

class _SampleOpacity extends State<SampleOpacity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            opacity_0(),
            opacity_05(),
            opacity_1()
          ],
        ),
      ),
    );
  }

  Widget opacity_0() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: Colors.yellow,
          padding: EdgeInsets.all(50),
          child: Text('aaa'),
        ),
        Opacity(
          opacity: 0,
          child: Container(
            color: Colors.red,
            padding: EdgeInsets.all(50),
            child: Text('aaa'),
          ),
        ),
        Container(
          color: Colors.blue,
          padding: EdgeInsets.all(50),
          child: Text('aaa'),
        )
      ],
    );
  }

    Widget opacity_05() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: Colors.yellow,
          padding: EdgeInsets.all(50),
          child: Text('aaa'),
        ),
        Opacity(
          opacity: 0.5,
          child: Container(
            color: Colors.red,
            padding: EdgeInsets.all(50),
            child: Text('aaa'),
          ),
        ),
        Container(
          color: Colors.blue,
          padding: EdgeInsets.all(50),
          child: Text('aaa'),
        )
      ],
    );
  }

    Widget opacity_1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          color: Colors.yellow,
          padding: EdgeInsets.all(50),
          child: Text('aaa'),
        ),
        Opacity(
          opacity: 1,
          child: Container(
            color: Colors.red,
            padding: EdgeInsets.all(50),
            child: Text('aaa'),
          ),
        ),
        Container(
          color: Colors.blue,
          padding: EdgeInsets.all(50),
          child: Text('aaa'),
        )
      ],
    );
  }
}
