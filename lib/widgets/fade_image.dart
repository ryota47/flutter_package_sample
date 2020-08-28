import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class SampleFadeImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleFadeImage();
}

class _SampleFadeImage extends State<SampleFadeImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeImage'),
      ),
      body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Image.network',
              ),
              Text('FadeInImage.\nassetNetwork'),
              Text('FadeInImage.\nmemoryNetwork'),
            ],
          ),
          Column(
            children: [
              Expanded(
                child: Image.network(
                    'https://1.bp.blogspot.com/-ZOg0qAG4ewU/Xub_uw6q0DI/AAAAAAABZio/MshyuVBpHUgaOKJtL47LmVkCf5Vge6MQQCNcBGAsYHQ/s1600/pose_pien_uruuru_woman.png'),
              ),
              Expanded(
                child: FadeInImage.assetNetwork(
                    placeholder: 'images/sample6.png',
                    image:
                        'https://1.bp.blogspot.com/-ZOg0qAG4ewU/Xub_uw6q0DI/AAAAAAABZio/MshyuVBpHUgaOKJtL47LmVkCf5Vge6MQQCNcBGAsYHQ/s1600/pose_pien_uruuru_woman.png'),
              ),
              Expanded(
                child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage, //transparent_image
                    image:
                        'https://1.bp.blogspot.com/-ZOg0qAG4ewU/Xub_uw6q0DI/AAAAAAABZio/MshyuVBpHUgaOKJtL47LmVkCf5Vge6MQQCNcBGAsYHQ/s1600/pose_pien_uruuru_woman.png'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
