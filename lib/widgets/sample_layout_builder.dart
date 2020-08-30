import 'package:flutter/material.dart';

class SampleLayputBuilder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleLayputBuilder();
}

class _SampleLayputBuilder extends State<SampleLayputBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayputBuilder使ってない'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints);
          if (constraints.maxWidth < 600) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                imageExplanation(),
                image(),
              ],
            );
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                imageExplanation(),
                image(),
              ],
            );
          }
        },
      ),
    );
  }

  Widget imageExplanation() {
    return Text(
      'この写真は、こないだ海で撮影したものです。\n彼女とデートしたときに追いかけっこをしました。\nワハハと笑って楽しかったです。',
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget image() {
    return Image.asset('images/sample1.png');
  }
}
