import 'package:flutter/material.dart';

class aboutScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new about();
}


 class about extends State <aboutScreen> {
  // This widget is the root of your application.
   @override
   Widget build(BuildContext context) {
     return Center(
       child:Container(
         color: Colors.blue[50],
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
                   child:
                   Text(
                     'CycleEase',
                     style:
                        TextStyle(color: Colors.black,
                        fontSize:32,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        ),
                     ),
                  ),
                ),

               Padding(
                 padding: const EdgeInsets.only(bottom:8.0, top: 10.0,),
                 child: Container(
                   width: 400,
                   height: 250,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20.0),
                     image:
                       DecorationImage(
                         image:
                         AssetImage('images/bicycle.jpg'),
                         fit: BoxFit.contain,
                       ),
                   ),
                  ),
                ),

                Padding(
                 padding: const EdgeInsets.all(2.0),
                 child: Container(
                   child:
                   Text(
                     'Making your cycling trips easier',
                     style:
                        TextStyle(color: Colors.black,
                        fontSize: 20,
                        ),
                     ),
                  ),
                ),

                Padding(
                 padding: const EdgeInsets.all(2.0),
                 child: Container(
                   child:
                   Flexible(
                     child: Text(
                       'CycleEase aims to make your cycling trips easier with the features of weather forecast and bicycle lots location. You will now be able to plan ahead for your cycling trips without worrying about the weather. Finding bicycle lots will not be as tough as before too.',
                       style: TextStyle(
                         fontSize: 16,
                         color: Colors.black,
                       ),
                      ),
                    ),
                  ),
                ),

                Container(
                  height: 50,
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'cycleEase@gmail.com',
                        style:
                        TextStyle(color: Colors.black,
                        fontSize: 16,
                        ),
                      ),
                      Text(
                        '(65) 6543 0576',
                        style:
                        TextStyle(color: Colors.black,
                        fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                  
           ],
           ),
       ),
    );
   }
 }