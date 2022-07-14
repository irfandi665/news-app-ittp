import 'package:flutter/material.dart';
import 'package:new_app/navbar.dart';
import 'package:new_app/navbar/basic_bottom_nav_bar.dart';
import 'package:new_app/navbar/hide_on_scroll.dart';
import 'package:new_app/navbar/with_tabbar.dart';
import 'package:new_app/screens/HomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApplication());
}

class MyApplication extends StatefulWidget {
  @override
  _MyApplicationState createState() => _MyApplicationState();
}

class _MyApplicationState extends State<MyApplication> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: WithTabBar(),
    );
  }
}
