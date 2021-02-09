import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class BikeLotsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new bike();
}

 class bike extends State <BikeLotsScreen> {

  // This widget is the root of your application.
   @override
   Widget build(BuildContext context) {
     return Align(
       child:Container(
         color: Colors.white,
         height: 700.0,
         width: 500.0,
         padding: const EdgeInsets.only(left:3.0, right:3.0,),
         child: Column(
           mainAxisSize: MainAxisSize.min,
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
              Padding(
                 padding: const EdgeInsets.only(left:2.0, right:2.0,),
                 child: Container(
                   child:Text(
                     'Bicycle Lots Locations',
                     style:
                        TextStyle(
                          color: Colors.black,
                        fontSize:24,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        ),
                     ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                    hintText: 'Ang Mo Kio Avenue 1',
                    hintStyle: TextStyle(fontSize: 18,
                      color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),

                Padding(
                    padding: const EdgeInsets.all(0.0),
                    child:Container(
                      height:400.0,
                      width:400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage('images/map.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
           ],
           ),
       ),
    );
   }
 }