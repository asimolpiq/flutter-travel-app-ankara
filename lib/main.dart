import 'package:flutter/material.dart';
import 'package:travel_app_ankara_flutter/start_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home:  Scaffold(

        body: StartScreen(),
      ),
    );
  }
}
