import 'package:flutter/material.dart';

class SampleToggleButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SampleToggleButton();
  }
}

class _SampleToggleButton extends State<SampleToggleButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle Buttons'),
      ),
      body: Center(
        child: ToggleButtons(
          isSelected: [true, true, true],
          children: [
            Icon(Icons.play_arrow),
            Icon(Icons.play_arrow),
            Icon(Icons.play_arrow),
          ],
          onPressed: (index) {
            
          },
        ),
      ),
    );
  }
}
