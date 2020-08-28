import 'package:flutter/material.dart';

class WidgetCatalog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WidgetCatalog();
}

class _WidgetCatalog extends State<WidgetCatalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget一覧'),
      ),
      body: Center(
        child: Column(
          children: [
            buttonCompornent(
                context, 'animatedContainer', '/animatedContainer'),
            buttonCompornent(context, 'opacity', '/opacity'),
            buttonCompornent(context, 'FadeTransition', '/FadeTransition'),
            buttonCompornent(context, 'FloatingActionButton', '/FloatingActionButton'),
            buttonCompornent(context, 'PageView', '/PageView'),
            buttonCompornent(context, 'Table', '/Table'),
            buttonCompornent(context, 'SliverListGrid', '/SliverListGrid'),
            buttonCompornent(context, 'FadeImage', '/FadeImage'),
            buttonCompornent(context, 'Hero', '/Hero'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('package'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Widget'),
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.of(context).pushNamed('/home');
          } else if (index == 1) {
            Navigator.of(context).pushNamed('/widget_catalog');
          }
        },
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
