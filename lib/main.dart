import 'package:beatiful_list/listpage.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      home: ListPage(
        title: 'Lesson',
      ),
    );
  }
}
