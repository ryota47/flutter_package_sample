import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:core';

class SampleUrlLauncher extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleUrlLauncher();
}

class _SampleUrlLauncher extends State<SampleUrlLauncher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('url_launcher'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text('アプリ内でURLを開く'),
            onPressed: () {
              _launchInApp();
            },
          ),
          RaisedButton(
            child: Text('ブラウザでURLを開く'),
            onPressed: () {
              _launchInBrowser();
            },
          ),
          RaisedButton(
            child: Text('iOSのユニバーサルリンクを開く'),
            onPressed: () {
              _launchUniversalLinkIos();
            },
          ),
          RaisedButton(
            child: Text('5秒たったら閉じる'),
            onPressed: () {
              _launchInApp();
              Timer(
                const Duration(seconds: 5),
                () {
                  closeWebView();
                },
              );
            },
          ),
        ],
      )),
    );
  }

// アプリ内で開く
  _launchInApp() async {
    const url = 'https://pub.dev/packages/url_launcher';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
      );
    } else {
      throw 'このURLにはアクセスできません';
    }
  }

// ブラウザで開く
  _launchInBrowser() async {
    const url = 'https://pub.dev/packages/url_launcher';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      throw 'このURLにはアクセスできません';
    }
  }

// ユニバーサルリンク
  _launchUniversalLinkIos() async {
    const url = 'https://www.youtube.com/';
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        universalLinksOnly: true,
        statusBarBrightness: Brightness.light
      );
    } else {
      throw 'このURLにはアクセスできません';
    }
  }
}
