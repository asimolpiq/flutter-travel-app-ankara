import 'package:flutter/material.dart';
import 'package:travel_app_ankara_flutter/views/login_vew.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: LoginView(),
      color:  const Color(0xff0164FF),
    );
  }
}
