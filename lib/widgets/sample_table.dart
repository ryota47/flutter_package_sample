import 'dart:math';

import 'package:flutter/material.dart';

class SampleTable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleTable();
}

class _SampleTable extends State<SampleTable> {
  List<Widget> boxList = [
    boxContainer(30, Colors.yellow),
    boxContainer(50, Colors.blue),
    boxContainer(20, Colors.green),
    boxContainer(30, Colors.purple),
    boxContainer(50, Colors.red),
    boxContainer(70, Colors.orange)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
      ),
      body: Table(
        children: [
          TableRow(
            children: [
              boxList[Random().nextInt(boxList.length)],
              boxList[Random().nextInt(boxList.length)],
              boxList[Random().nextInt(boxList.length)],
            ],
          ),
          TableRow(
            children: [
              boxList[Random().nextInt(boxList.length)],
              boxList[Random().nextInt(boxList.length)],
              boxList[Random().nextInt(boxList.length)],
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.change_history),
        onPressed: () {
          setState(() {});
        },
      ),
    );
  }

  static boxContainer(double size, Color color) {
    return Container(
      padding: EdgeInsets.all(size),
      child: Text('box'),
      color: color,
    );
  }
}
