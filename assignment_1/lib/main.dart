import 'package:flutter/material.dart';

import 'package:assignment_1/dynamic_text.dart';
import 'package:assignment_1/text_control.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _text = 'HI!';

  void changeText(String newText) {
    setState(() {
      _text = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Assignment'),
        ),
        body: Column(
          children: [
            DynamicText(
              text: _text,
            ),
            TextControl(
              changeTextHandler: () {
                changeText('BYE!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
