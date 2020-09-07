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
          // defaultColumnWidth: FlexColumnWidth(1),
          defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          children: [
            TableRow(
              children: [
                Image.asset('images/sample1.png'),
                SizedBox(),
                Image.asset(
                  'images/sample1.png',
                  color: Colors.red,
                ),
              ],
            ),
            TableRow(
              children: [
                Text('ただの画像'),
                SizedBox(),
                Text('画像の色変更'),
              ],
            ),
            TableRow(
              children: [
                ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(Colors.green, BlendMode.colorBurn),
                  child: Image.asset('images/sample1.png'),
                ),
                ColorFiltered(
                  colorFilter: ColorFilter.mode(Colors.green, BlendMode.lighten),
                  child: Image.asset('images/sample1.png'),
                ),
                ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(Colors.green, BlendMode.modulate),
                  child: Image.asset('images/sample1.png'),
                )
              ],
            ),
            TableRow(
              children: [
                Text('BlendMode.\ncolorBurn)'),
                Text('BlendMode.\nlighten'),
                Text('BlendMode.\nmodulate'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
