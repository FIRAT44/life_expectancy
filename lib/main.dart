import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        //accentColor: Colors.pink,
        //brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[300],
        scaffoldBackgroundColor: Colors.lightBlue[300],
      ),
      home: InputPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
