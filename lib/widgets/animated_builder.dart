import 'package:flutter/material.dart';

final toDoList = [
  {"title": "買い物にいく"},
  {"title": "犬の散歩"},
  {"title": "明日の準備"},
  {"title": "家族に電話する"},
];

class SampleDismissible extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleDismissible();
}

class _SampleDismissible extends State<SampleDismissible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
      ),
      body: ListView(
        children: toDoList.map((data) => _buildItem(context, data)).toList(),
      ),
    );
  }

  Widget _buildItem(BuildContext context, Map data) {
    Item toDoItem = Item.fromMap(data);

    return Dismissible(
      onDismissed: (direction) {
        if (direction == DismissDirection.endToStart) {
          dialog(context, '右から');
        } else {
          dialog(context, '左から');

        }
      },
      background: Container(
        color: Colors.red,
      ),
      key: ValueKey(toDoItem),
      child: ListTile(
        title: Text('${toDoItem.title}'),
      ),
    );
  }

  dialog(BuildContext context, String content) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          content: Text(content),
        );
      },
    );
  }
}

// アイテムクラス
class Item {
  String title;
  bool star;

  Item({this.title, this.star});

  Item.fromMap(Map<String, dynamic> mapData) {
    this.title = mapData["title"];
    this.star = mapData["star"];
  }
}
