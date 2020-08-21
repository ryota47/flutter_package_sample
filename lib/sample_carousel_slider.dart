import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ImageList();
}

class _ImageList extends State<ImageList> {
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
        title: Text('画像を表示'),
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
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                SampleCarouselSlider(images: images, index: index),
            fullscreenDialog: true,
          ),
        );
      },
    );
  }
}

class SampleCarouselSlider extends StatefulWidget {
  final List images;
  final int index;

  SampleCarouselSlider({this.images, this.index});

  @override
  State<StatefulWidget> createState() => _SampleCarouselSlider(images, index);
}

class _SampleCarouselSlider extends State<SampleCarouselSlider> {
  List images;
  int index;

  _SampleCarouselSlider(this.images, this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('carousel_slider'),
        ),
        // body: CarouselSlider(
        //   options: CarouselOptions(
        //     height: 600.0,
        //     initialPage: index,
        //     viewportFraction: 1,
        //     enableInfiniteScroll: false,
        //     reverse: false,
        //   ),
        //   items: images.map((i) {
        //     return Builder(
        //       builder: (BuildContext context) {
        //         return Image.asset(i);
        //       },
        //     );
        //   }).toList(),
        // )
        body: CarouselSlider.builder(
          options: CarouselOptions(
            height: 600.0,
            // aspectRatio: 16/9,
            initialPage: index,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            // reverse: false,
            // autoPlay: true,
            // autoPlayInterval: Duration(seconds: 3),
            // autoPlayAnimationDuration: Duration(milliseconds: 800),
            // autoPlayCurve: Curves.fastOutSlowIn,
            // enlargeCenterPage: true,
            // scrollDirection: Axis.vertical
          ),
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              images[index],
            );
          },
        ),
        );
  }
}
