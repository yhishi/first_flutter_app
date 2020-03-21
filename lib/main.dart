import 'package:flutter/material.dart';
import 'header.dart';
import 'root.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // <- Debug の 表示を OFF
      home: RootWidget(),
    );
  }
}
