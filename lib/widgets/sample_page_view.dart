import 'package:flutter/material.dart';
import 'package:sample/widgets/sample_animated_container.dart';
import 'package:sample/widgets/sample_fade_transition.dart';

class SamplePageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SamplePageView();
}

class _SamplePageView extends State<SamplePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
      ),
      body: PageView(
        controller: PageController(keepPage: true),
        children: [
          SampleAnimatedContainer(),
          SampleFadeTransition(),
        ],
      ),
    );
  }
}
