// import 'dart:async';
// import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

class weatherScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new weatherState();
}


class weatherState extends State<weatherScreen>
{
  // Future<String> getData() async{
  //    http.Response response = await http.get(
  //      Uri.encodeFull("https://api.data.gov.sg/v1/environment/24-hour-weather-forecast"),
  //      headers: {
  //        "Accept" : "application/json"
  //      }
  //    );
     
  //    print(response.body);

  //    List data = json.decode(response.body);
  //    print(data);

  //  }

  @override
  Widget build(BuildContext context){
    // return Scaffold(
    //   body: Center(
    //     child:Container(
    //       child: RaisedButton(
    //       child: Text('Get Weather Forecast'),
    //       onPressed: getData,
    //     ),
    //     ),
    //   ),
    // );
    return Center(
      child:Container(
         height: 700.0,
         width: 500.0,
         padding: const EdgeInsets.all(0.0),
         child:Container(
           color: Colors.white38,
           child: Padding(
             padding: EdgeInsets.all(8.0),
             child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:2.0, right:2.0,),
                  child: Container(
                    child:
                    Text(
                      'Weather Forecast',
                      style:
                      TextStyle(color: Colors.black,
                        fontSize:24,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                      height:80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('images/rain.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      ),
                    ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                       'Rainy',
                       style:
                          TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                      ),
                      Padding(padding: const EdgeInsets.only(bottom:8.0),),
                      Text(
                        '29 Degree Celcius',
                        style:
                          TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      Padding(padding: const EdgeInsets.only(bottom:8.0),),
                    ],
                ),
                _buildDivider(),
              ],
             ),

             //wed
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Wednesday',
                  style:
                  TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    ),
                 ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.wb_cloudy,color: Colors.teal[300],),
                      ],
                    ),
                    Text(
                      'Cloudy',
                      style:
                      TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '30 Degree Celcius',
                      style:
                      TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            _buildDivider(),
            //thurs
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Thursday',
                  style:
                  TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    ),
                 ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.wb_sunny,color: Colors.yellowAccent,),
                      ],
                    ),
                    Text(
                      'Sunny',
                      style:
                      TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '31 Degree Celcius',
                      style:
                      TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            _buildDivider(),

            //fri
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Friday',
                  style:
                  TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    ),
                 ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.umbrella,color: Colors.grey[800],),
                      ],
                    ),
                    Text(
                      'Rainy',
                      style:
                      TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '28 Degree Celcius',
                      style:
                      TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            _buildDivider(),
            
            //Sat
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Saturday',
                  style:
                  TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    ),
                 ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.wb_sunny, color: Colors.yellowAccent,),
                      ],
                    ),
                    Text(
                      'Cloudy',
                      style:
                      TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '30 Degree Celcius',
                      style:
                      TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            ],
            ),
           ),
         ),
       ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }

}