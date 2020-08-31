import 'package:flutter/material.dart';

class SampleValueListenableBuilder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleValueListenableBuilder();
}

class _SampleValueListenableBuilder
    extends State<SampleValueListenableBuilder> {
  final _counter = ValueNotifier<int>(0);

  @override
  void initState() {
    super.initState();

    _counter.addListener(() {
      print(_counter.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ValueListenableBuilder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('ボタンを押した回数'),
            ValueListenableBuilder<int>(
              valueListenable: _counter,
              builder: (_context, count, _child) => Text(
                '$count',
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _counter.value++,
        child: const Icon(Icons.add),
      ),
    );
  }
}
