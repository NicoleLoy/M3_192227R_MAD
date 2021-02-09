//import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'main.dart';

class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({this.onTap});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: MediaQuery.of(context).size.width * 0.8,
     child: Drawer(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           DrawerHeader(
             decoration: new BoxDecoration(
              color: Colors.purple,
              gradient: new LinearGradient(
                colors: [Colors.blue[400], Colors.cyan],
                begin: Alignment.centerRight,
              end: new Alignment(-1.0, -1.0)
              ),
             ),
             child: Padding(
               padding: EdgeInsets.all(6),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: <Widget> [
                   Container(
                     width: 60,
                     height: 60,
                     child: CircleAvatar(
                       backgroundImage: AssetImage('images/mugwort.jpg'),
                       ),
                      ),

                      SizedBox(height: 15,),
                      Text('Nicole Loy',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                      ),
                 ],
                 ),
                 ),
             ),

             ListTile( 
               leading: Icon(Icons.home, color: Colors.black),
               title: Text('Home'),
               onTap: () => onTap(context, 0, 'Home'),
             ),
             _buildDivider(),
             ListTile( 
               leading: Icon(Icons.person, color: Colors.black),
               title: Text('Profile'),
               onTap: () => onTap(context, 1, 'Profile'),
             ),
             _buildDivider(),
             ListTile( 
               leading: Icon(Icons.settings, color: Colors.black),
               title: Text('Settings'),
               onTap: () => onTap(context, 2, 'Setting'),
             ),
             _buildDivider(),
             ListTile( 
               leading: Icon(Icons.info_rounded, color: Colors.black),
               title: Text('About Us'),
               onTap: () => onTap(context, 3, 'About'),
             ),
             _buildDivider(),
             ListTile( 
               leading: Icon(Icons.exit_to_app, color: Colors.redAccent),
               title: Text('Logout',
               style:
               TextStyle(
                 color: Colors.redAccent,
               ),
               ),
               onTap: () {
               Navigator.push(context,
               MaterialPageRoute(builder: (context) => Login()),);
               },
             ),
         ],
       ),),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal:2.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.blueGrey,
    );
  }

}