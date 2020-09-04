import 'package:flutter/material.dart';
import 'package:sample/packages/mail_package.dart';
import 'package:sample/packages/sample_%20flutter_slidable.dart';
import 'package:sample/packages/sample_%20url_launcher.dart';
import 'package:sample/packages/sample_carousel_slider.dart';
import 'package:sample/packages/sample_image_picker.dart';
import 'package:sample/packages/sample_map_launcher.dart';
import 'package:sample/packages/sample_shared_preferences.dart';
import 'package:sample/widgets/animated_builder.dart';
import 'package:sample/widgets/fade_image.dart';
import 'package:sample/widgets/sample_%20draggable.dart';
import 'package:sample/widgets/sample_%20transform.dart';
import 'package:sample/widgets/sample_animated_container.dart';
import 'package:sample/widgets/sample_animated_icon.dart';
import 'package:sample/widgets/sample_color_filtered.dart';
import 'package:sample/widgets/sample_data_table.dart';
import 'package:sample/widgets/sample_draggable_scrollable_sheet.dart';
import 'package:sample/widgets/sample_fade_transition.dart';
import 'package:sample/widgets/sample_floating_action_button.dart';
import 'package:sample/widgets/sample_hero.dart';
import 'package:sample/widgets/sample_indexed_stack.dart';
import 'package:sample/widgets/sample_layout_builder.dart';
import 'package:sample/widgets/sample_opacity.dart';
import 'package:sample/widgets/sample_page_view.dart';
import 'package:sample/widgets/sample_place_holder.dart';
import 'package:sample/widgets/sample_sliver_List_Grid.dart';
import 'package:sample/widgets/sample_table.dart';
import 'package:sample/widgets/value_listenable_builder.dart';

import 'widget_ catalog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'URL Launcher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/home': (BuildContext context) => MyHomePage(),
        '/widget_catalog': (BuildContext context) => WidgetCatalog(),
        '/shared_preferences': (BuildContext context) =>
            SampleSharedPreferences(),
        '/url_launcher': (BuildContext context) => SampleUrlLauncher(),
        '/flutter_slidable': (BuildContext context) => SampleSlidable(),
        '/carousel_slider': (BuildContext context) => ImageList(),
        '/mail_packages': (BuildContext context) => MailPackage(),
        '/image_picker': (BuildContext context) => SampleImagePicker(),
        '/map_launcher': (BuildContext context) => SampleMapLauncher(),
        '/animatedContainer': (BuildContext context) => SampleAnimatedContainer(),
        '/opacity': (BuildContext context) => SampleOpacity(),
        '/FadeTransition':(BuildContext context) => SampleFadeTransition(),
        '/FloatingActionButton': (BuildContext context) => SampleFloatingActionButton(),
        '/PageView': (BuildContext context) => SamplePageView(),
        '/Table': (BuildContext context) => SampleTable(),
        '/SliverListGrid': (BuildContext context) => SampleSliverListGrid(),
        '/FadeImage': (BuildContext context) => SampleFadeImage(),
        '/Hero': (BuildContext context) => SampleHero(),
        '/LayoutBuilder': (BuildContext context) => SampleLayputBuilder(),
        '/Transform': (BuildContext context) => SampleTransform(),
        '/Dismissible': (BuildContext context) => SampleDismissible(),
        '/ValueListenableBuilder': (BuildContext context) => SampleValueListenableBuilder(),
        '/Draggable': (BuildContext context) => SampleDraggable(),
        '/AnimatedIcon': (BuildContext context) => SampleAnimatedIcons(),
        '/PlaceHolder': (BuildContext context) => SamplePlaceHolder(),
        '/IndexedStack': (BuildContext context) => SampleIndexedStack(),
        '/DataTable': (BuildContext context) => SampleDataTable(),
        '/DraggableScrollableSheet': (BuildContext context) => SampleDraggableScrollableSheet(),
        '/ColorFlitered': (BuildContext context) => SampleColorFlitered(),
      },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('パッケージサンプル'),
      ),
      body: Center(
        child: Column(
          children: [
            buttonCompornent(
                context, 'shared_preferences', '/shared_preferences'),
            buttonCompornent(context, 'url_launcher', '/url_launcher'),
            buttonCompornent(context, 'flutter_slidable', '/flutter_slidable'),
            buttonCompornent(context, 'carousel_slider', '/carousel_slider'),
            buttonCompornent(context, 'mail_packages', '/mail_packages'),
            buttonCompornent(context, 'image_picker', '/image_picker'),
            buttonCompornent(context, 'map_launcher', '/map_launcher'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('package'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Widget'),
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.of(context).pushNamed('/home');
          } else if (index == 1) {
            Navigator.of(context).pushNamed('/widget_catalog');
          }
        },
      ),
    );
  }

  Widget buttonCompornent(BuildContext context, String title, String route) {
    return RaisedButton(
      child: Text('$title'),
      onPressed: () {
        Navigator.of(context).pushNamed('$route');
      },
    );
  }
}
