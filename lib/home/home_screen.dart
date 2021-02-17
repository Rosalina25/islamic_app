import 'package:flutter/material.dart';
import 'file:///C:/Users/Rosalina/FlutterProjects/tourism_app/islamic_app/islamic_app/lib/doa/list_doa.dart';
import 'file:///C:/Users/Rosalina/FlutterProjects/tourism_app/islamic_app/islamic_app/lib/home/menu_content.dart';
import 'header_content.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            HeaderContent(),
            ContentMenu(),
            ListDoa()
          ],
    );
  }
}
