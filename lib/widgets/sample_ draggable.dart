import 'package:flutter/material.dart';

class SampleDraggable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleDraggable();
}

class _SampleDraggable extends State<SampleDraggable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable'),
      ),
      body: Center(
          child: Column(
        children: [
          sampleDraggable(),
          dragTarget(),
        ],
      )),
    );
  }

  sampleDraggable() {
    return Draggable(
      data: '最高！',
      child: Icon(
        Icons.phone,
        size: 90,
      ),
      feedback: Icon(
        Icons.phone_iphone,
        size: 90,
      ),
      childWhenDragging: Icon(
        Icons.flag,
        size: 90,
      ),
      onDragStarted: () {
        print("Draggable.onDragStarted:");
      },
      onDraggableCanceled: (velocity, offset) {
        print(
            "Draggable.onDraggableCanceled: velocity: $velocity, offset: $offset");
      },
      onDragCompleted: () {
        print("Draggable.onDragCompleted:");
      },
      onDragEnd: (details) {
        print("Draggable.onDragEnd: details: $details");
      },
    );
  }

  dragTarget() {
    return DragTarget(
      builder: (context, candidateData, rejectedData) {
        return Container(
          width: 90,
          height: 90,
          color: Colors.red,
        );
      },
      onWillAccept: (String data)  {
        print('onWillAccept: $data');
        return true;
      },
      // DragTargetにドラッグされた時に呼ばれる
      onAccept: (String data) {
        print('onAccept - $data');
      },

// DragTarget の範囲から離れた時に呼ばれる
      onLeave: (data) {
        print('onLeave - $data');
      },
    );
  }
}
