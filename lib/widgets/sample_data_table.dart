import 'package:flutter/material.dart';

final user = [
  {"name": "太郎", "old": "21", "gender": "男", "type": "学生"},
  {"name": "花子", "old": "22", "gender": "女", "type": "学生"},
  {"name": "次郎", "old": "23", "gender": "男", "type": "社会人"},
  {"name": "結衣", "old": "23", "gender": "女", "type": "社会人"},
];

class SampleDataTable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleDataTable();
}

class _SampleDataTable extends State<SampleDataTable> {
  final name = ["太郎", "花子", "次郎", "結衣"];
  final old = ["21", "25", "22", "23"];
  final gender = [
    "男",
    "女",
    "男",
    "女",
  ];
  final type = ["学生", "学生", "社会人", "社会人"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable'),
      ),
      body: Center(
        child: table(),
      ),
    );
  }

  table() {
    user.forEach((element) {
      Item item = Item.fromMap(element);
      return DataTable(
        columns: [
          DataColumn(
            label: Text('item'),
          ),
          DataColumn(
            label: Text('${item.old}'),
          ),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(
                Text('${item.gender}'),
              ),
              DataCell(
                Text('${item.type}'),
              ),
            ],
          ),
        ],
      );
    });
  }
}

class Item {
  String name;
  String old;
  String gender;
  String type;

  Item({this.name, this.old, this.gender, this.type});

  Item.fromMap(Map<String, dynamic> mapData) {
    this.name = mapData["name"];
    this.old = mapData["old"];
    this.gender = mapData["gender"];
    this.type = mapData["type"];
  }
}
