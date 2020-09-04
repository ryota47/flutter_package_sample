import 'package:flutter/material.dart';

class SampleColorFlitered extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleColorFlitered();
}

class _SampleColorFlitered extends State<SampleColorFlitered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ColorFlitered'),
      ),
      body: Center(
        child: Table(
          children: [
            TableRow(children: [
              Image.asset('images/sample1.png'),
              Image.asset(
                'images/sample1.png',
                color: Colors.red,
              ),              Image.asset(
                'images/sample1.png',
                color: Colors.red,
              ),
            ]),
            TableRow(
              children: [
                ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(Colors.green, BlendMode.colorBurn),
                  child: Image.asset('images/sample1.png'),
                ),
                ColorFiltered(
                  colorFilter: ColorFilter.mode(Colors.green, BlendMode.dstIn),
                  child: Image.asset('images/sample1.png'),
                ),
                ColorFiltered(
                  colorFilter: ColorFilter.mode(Colors.green, BlendMode.modulate),
                  child: Image.asset('images/sample1.png'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
