import 'package:flutter/material.dart';

class SampleSliverListGrid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleSliverListGrid();
}

class _SampleSliverListGrid extends State<SampleSliverListGrid> {
  final List images = [
    "images/sample1.png",
    "images/sample2.png",
    "images/sample3.png",
    "images/sample4.png",
    "images/sample5.png",
    "images/sample6.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverListとSliverGrid'),
      ),
      body: Container(
        child: Text('わからんかった'),
      ),
    );
  }
}
