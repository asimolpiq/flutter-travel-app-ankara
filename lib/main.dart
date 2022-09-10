import 'package:flutter/material.dart';
import 'package:travel_app_ankara_flutter/view/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Travel App', home: HomeScreen());
  }
}
