import 'package:flutter/material.dart';
import 'file:///C:/Users/Rosalina/FlutterProjects/tourism_app/islamic_app/islamic_app/lib/intro/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: SplashScreen(),
    );
  }
}

