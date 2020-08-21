import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SampleState();
}

class SampleState extends State<Sample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SharedPreferences Demo"),

      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: _launchURL,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      CircularProgressIndicator();
    }
  }
}
