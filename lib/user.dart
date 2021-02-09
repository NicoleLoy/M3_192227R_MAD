import 'package:flutter/material.dart';
import 'package:project_192227r/aboutScreen.dart';
import 'drawer.dart';
import 'home.dart';
import 'profile.dart';
import 'setting.dart';
import 'aboutScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  String title = 'Home';

  int index = 0;
  List<Widget>list = [Home(),Profile(),Setting(),aboutScreen()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.blueGrey,
          ),

          body: list[index],
          drawer: MyDrawer(onTap:(context,i,txt){
            setState(() {
              index = i;
              title = txt;
              Navigator.pop(context);
            });
          }
        ),
      ),
    );
  }
}
  
