import 'package:flutter/material.dart';

class SampleHero extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleHero();
}

class _SampleHero extends State<SampleHero> {
  final List images = [
    "images/sample1.png",
    "images/sample2.png",
    "images/sample3.png",
    "images/sample4.png",
    "images/sample5.png",
    "images/sample6.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return _photoItem(images[index], index);
        },
      ),
    );
  }

  Widget _photoItem(String image, int index) {
    return GestureDetector(
      child: Hero(
        tag: index,
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FullScreenImage(image: image, index: index),
          ),
        );
      },
    );
  }
}

class FullScreenImage extends StatefulWidget {
  final String image;
  final int index;

  FullScreenImage({this.image, this.index});

  @override
  State<StatefulWidget> createState() => _FullScreenImage(image, index);
}

class _FullScreenImage extends State<FullScreenImage> {
  String image;
  int index;

  _FullScreenImage(this.image, this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag: index,
        child: Container(
          color: Colors.white,
          child: Image.asset(image),
        ),
      ),
    );
  }
}
