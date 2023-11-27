import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/screens/home_screens.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food UI Kit',
      theme: buildThemeData(),

      home: HomeScreen(),
    );
  }

  buildThemeData() {}
}
