import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

final toDoList = [
  {"title": "買い物にいく"},
  {"title": "犬の散歩"},
  {"title": "明日の準備"},
  {"title": "家族に電話する"},
];

class SampleSlidable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SampleSlidableState();
}

class SampleSlidableState extends State<SampleSlidable> {
  final itemController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter_slidable'),
      ),
      body: ListView(
        children: toDoList.map((data) => _buildItem(context, data)).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          formForNewItem(context);
        },
      ),
    );
  }

  Widget _buildItem(BuildContext context, Map data) {
    Item toDoItem = Item.fromMap(data);

    return Slidable(
      actionExtentRatio: 0.2,
      actionPane: SlidableBehindActionPane(),
      // 左側に表示するWidget
      actions: <Widget>[
        IconSlideAction(
          caption: '重要',
          iconWidget: Container(child:Text('aaa')),
          color: Colors.yellow,
          icon: Icons.star,
          onTap: () {},
        ),
        IconSlideAction(
          caption: '共有',
          color: Colors.blue,
          icon: Icons.share,
          onTap: () {},
        ),
      ],
      // 右側に表示するWidget
      secondaryActions: [
        IconSlideAction(
          caption: '削除',
          color: Colors.red,
          icon: Icons.remove,
          onTap: () {
            toDoList.remove(data);
            setState(() {});
          },
        ),
      ],
      // controller: SlidableController(),
      // 一つ一つのアイテム
      child: Container(
        padding: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey))),
        child: ListTile(
          leading: Icon(Icons.chevron_right),
          title: Text(toDoItem.title),
        ),
      ),
    );
  }

// アイテムを追加するダイアログ
  formForNewItem(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return SimpleDialog(
          title: Text('新しく追加する'),
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                controller: itemController,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlatButton(
                  child: Text('キャンセル'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                FlatButton(
                  child: Text('OK'),
                  onPressed: () {
                    toDoList.add({"title": itemController.text});
                    Navigator.of(context).pop();
                    itemController.clear();
                    setState(() {});
                  },
                )
              ],
            )
          ],
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
