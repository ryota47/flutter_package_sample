import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SampleImagePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleImagePicker();
}

class _SampleImagePicker extends State<SampleImagePicker> {
  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('image_picker'),
      ),
      body: Center(
        child: _image == null ? Text('画像を選択してください') : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.photo_album),
        onPressed: () {
          getImage();
        },
      ),
    );
  }

  getImage() async {
    PickedFile imageFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      // imageQuality: 80,
      // maxWidth: 10,
      // maxHeight: 600,
    );
    if (imageFile != null) {
      setState(() {
        _image = File(imageFile.path);
      });
    }
  }
}
