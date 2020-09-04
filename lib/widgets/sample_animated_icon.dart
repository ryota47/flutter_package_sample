import 'package:flutter/material.dart';

class SampleAnimatedIcons extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleAnimatedIcons();
}

class _SampleAnimatedIcons extends State<SampleAnimatedIcons>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedIcons'),
      ),
      body: Table(
        children: [
          TableRow(
            children: [
              icons(AnimatedIcons.add_event),
              icons(AnimatedIcons.arrow_menu),
              icons(AnimatedIcons.ellipsis_search),
              FlatButton(
                child: icons(AnimatedIcons.play_pause),
                onPressed: () {
                  animationController.forward();
                },
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          animationController.forward();
        },
      ),
    );
  }

  Widget icons(AnimatedIconData icon) {
    return AnimatedIcon(
      icon: icon,
      progress: animationController,
      size: 32,
    );
  }
}
