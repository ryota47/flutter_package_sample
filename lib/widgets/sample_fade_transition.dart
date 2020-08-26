import 'package:flutter/material.dart';

class SampleFadeTransition extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleFadeTransition();
}

class _SampleFadeTransition extends State<SampleFadeTransition>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation _tween;

  @override
  void initState() {
    super.initState();
    setState(() {
      _controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3),
      );
      _tween = Tween(begin: 0.0, end: 1.0).animate(_controller);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeTransiton'),
      ),
      body: FadeTransition(
        opacity: _tween,
        child: Image.asset('images/sample1.png'),
      ),
    );
  }
}
