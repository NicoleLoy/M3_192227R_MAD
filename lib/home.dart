import 'package:flutter/material.dart';
import 'BikeLotsScreen.dart';
import 'WeatherScreen.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeState();
}


class HomeState extends State<Home> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
    home: DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            height: 60.0,
          color: Colors.blue[50],
          child: TabBar(

            indicatorColor: Colors.blueGrey,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,

            tabs: [
              Tab(
                icon:Icon(Icons.directions_bike,),
                child:Text('Lots',
                style: TextStyle(
                  fontSize: 14,
                 ),
                ),
              ),
              Tab(icon:Icon(Icons.cloud,),
              child:Text('Weather',
                style: TextStyle(
                  fontSize: 14,
                 ),
                ),
              ),
            ],
          ),
        ),
        ),
        
        body:
           TabBarView(
            children: [
              BikeLotsScreen(),
              weatherScreen(),
            ],
          ),
        ),
    ),
    );
  }
}

