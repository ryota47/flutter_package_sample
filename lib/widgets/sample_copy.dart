import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample/widgets/copy_tooltip.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:simple_tooltip/simple_tooltip.dart';

class SampleCopy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SampleCopy();
}

class _SampleCopy extends State<SampleCopy> {
  String url = 'https://pub.dev/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('コピーしたい'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // CopyTooltip(
            //   message: 'コピーできるかも',
            //   child: RichText(
            //     text: TextSpan(
            //         text: url,
            //         style: TextStyle(color: Colors.blue, fontSize: 14),
            //         recognizer: TapGestureRecognizer()
            //           ..onTap = () {
            //             launch(url, forceSafariVC: false);
            //             // Clipboard.setData(ClipboardData(text: url));
            //             // SnackBar(
            //             //   content: Text('コピーしたよ'),
            //             // );
            //           }),
            //   ),
            // ),

            // TextFormField(),
            RichText(
              text: TextSpan(
                  text: url,
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // launch(url, forceSafariVC: false);
                      Clipboard.setData(ClipboardData(text: url));
                      SnackBar(
                        content: Text('コピーしたよ'),
                      );
                    }),
            ),
            // Tooltip(
            //   message: 'コピーしますか',
            //   child: GestureDetector(
            //     child: RichText(
            //       text: TextSpan(
            //           text: url,
            //           style: TextStyle(color: Colors.blue, fontSize: 14),
            //           recognizer: TapGestureRecognizer()
            //             ..onTap = () {
            //               launch(url, forceSafariVC: false);
            //               // Clipboard.setData(ClipboardData(text: url));
            //               // SnackBar(
            //               //   content: Text('コピーしたよ'),
            //               // );
            //             }),
            //     ),
            //     // onLongPress: () {
            //     //   // Clipboard.setData(ClipboardData(text: url));
            //     //   // SnackBar(
            //     //   //   content: Text('コピーしたよ'),
            //     //   // );
            //     // },
            //   ),
            // ),
            // SimpleTooltip(
            //   child: RichText(
            //     text: TextSpan(
            //         text: url,
            //         style: TextStyle(color: Colors.blue, fontSize: 14),
            //         recognizer: TapGestureRecognizer()
            //           ..onTap = () {
            //             // launch(url, forceSafariVC: false);
            //             Clipboard.setData(ClipboardData(text: url));
            //             SnackBar(
            //               content: Text('コピーしたよ'),
            //             );
            //           }),
            //   ),
            //   content: Text('コピーできるよ'),
            //   show: false,
            //   tooltipDirection: TooltipDirection.up,
            // ),
            ActionChip(
              avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: Text('AB'),
              ),
              label: Text('Aaron Burr'),
              onPressed: () {
                print("If you stand for nothing, Burr, what’ll you fall for?");
              },
            ),
            // GestureDetector(
            //   child: Tooltip(
            //     message: 'コピーしたいよ',
            //     child: RichText(
            //       text: TextSpan(
            //         text: url,
            //         style: TextStyle(color: Colors.blue, fontSize: 14),
            //         recognizer: TapGestureRecognizer()
            //           ..onTap = () {
            //             launch(url, forceSafariVC: false);
            //           },
            //       ),
            //     ),
            //   ),
            //   onLongPress: () {
            //     PopupMenuButton(
            //       itemBuilder: (context) => <PopupMenuEntry<String>>[
            //         const PopupMenuItem(
            //           child: const Text('プロフィール変更'),
            //           value: 'profile',
            //         ),
            //         const PopupMenuItem(
            //             child: const Text('メールアドレス変更'), value: 'email'),
            //         const PopupMenuItem(
            //             child: const Text('パスワード変更'), value: 'password'),
            //       ],
            //       onSelected: (value) {
            //         switch (value) {
            //           case 'profile':
            //             Navigator.of(context);
            //             break;
            //           case 'email':
            //             Navigator.of(context).pushNamed('/email');
            //             break;
            //           case 'password':
            //             Navigator.of(context).pushNamed('/password');
            //             break;
            //           default:
            //         }
            //       },
            //     );
            //     // Clipboard.setData(ClipboardData(text: url));
            //     // SnackBar(
            //     //   content: Text('コピーしたよ'),
            //     // );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

class TipAction extends Tooltip {}
