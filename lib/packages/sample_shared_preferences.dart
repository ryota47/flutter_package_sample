import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/material.dart';

class SampleSharedPreferences extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleSharedPreferences();
}

class _SampleSharedPreferences extends State<SampleSharedPreferences> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  final _nameController = TextEditingController();
  String _name;

  @override
  void initState() {
    super.initState();
    getName().then((value) {
      setState(() {
        _name = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('shared_preferences'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$_name',
                style: TextStyle(fontSize: 32),
              ),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(hintText: '名前を入力してね'),
              ),
              RaisedButton(
                child: Text('保存'),
                onPressed: () {
                  setName().then((success) {
                    _nameController.clear();
                  });
                },
              ),
              RaisedButton(
                child: Text('削除'),
                onPressed: () {
                  removeName();
                },
              ),
            ],
          ),
        ));
  }

  setName() async {
    SharedPreferences prefs = await _prefs;
    prefs.setString('name', _nameController.text);
    setState(() {
      _name = prefs.getString('name');
    });
  }

  getName() async {
    SharedPreferences prefs = await _prefs;
    return prefs.getString('name');
  }

  removeName() async {
    SharedPreferences prefs = await _prefs;
    prefs.remove('name');
    setState(() {
      _name = null;
    });
  }
}
