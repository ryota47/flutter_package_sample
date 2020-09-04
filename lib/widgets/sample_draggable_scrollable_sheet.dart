import 'package:flutter/material.dart';

class SampleDraggableScrollableSheet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleDraggableScrollableSheet();
}

class _SampleDraggableScrollableSheet
    extends State<SampleDraggableScrollableSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DraggableScrollableSheet'),
      ),
      body: Column(
        children: [
          Expanded(
            child: DraggableScrollableSheet(
              initialChildSize: 0.6,
              minChildSize: 0.2,
              maxChildSize: 0.6,
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Image.asset('images/sample1.png'),
                );
              },
            ),
          ),
                    Expanded(
            child: DraggableScrollableSheet(
              initialChildSize: 0.6,
              minChildSize: 0.2,
              maxChildSize: 0.6,
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Image.asset('images/sample1.png'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
