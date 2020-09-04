import 'package:flutter/material.dart';

class SamplePlaceHolder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SamplePlaceHolder();
}

class _SamplePlaceHolder extends State<SamplePlaceHolder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PlaceHolder'),
      ),
      body: Placeholder(
        fallbackHeight: 50,
        color: Colors.red,
      ),
    );
  }
}
