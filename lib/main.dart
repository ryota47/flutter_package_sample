import 'package:flutter/material.dart';
import 'package:sample/sample_%20flutter_slidable.dart';
import 'package:sample/sample_%20url_launcher.dart';
import 'package:sample/sample_carousel_slider.dart';
import 'package:sample/sample_shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'URL Launcher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/shared_preferences': (BuildContext context) =>
            SampleSharedPreferences(),
        '/url_launcher': (BuildContext context) => SampleUrlLauncher(),
        '/flutter_slidable': (BuildContext context) => SampleSlidable(),
        '/carousel_slider': (BuildContext context) => ImageList(),
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('パッケージサンプル'),
      ),
      body: Center(
        child: Column(
          children: [
            buttonCompornent(
                context, 'shared_preferences', '/shared_preferences'),
            buttonCompornent(context, 'url_launcher', '/url_launcher'),
            buttonCompornent(context, 'flutter_slidable', '/flutter_slidable'),
            buttonCompornent(context, 'carousel_slider', '/carousel_slider')
          ],
        ),
      ),
    );
  }

  Widget buttonCompornent(BuildContext context, String title, String route) {
    return RaisedButton(
      child: Text('$title'),
      onPressed: () {
        Navigator.of(context).pushNamed('$route');
      },
    );
  }
}
