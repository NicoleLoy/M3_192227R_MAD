import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(Profile());

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyCustomWidget(),
      )
    );
  }
}

class MyCustomWidget extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Center(
          child: Container(
            color: Colors.blue[50],
            height: 600,
            child: Padding(
              padding:const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child:
                    Text('My Profile',
                    style: TextStyle(fontSize: 24,
                    ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          height:150.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('images/mugwort.jpg'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      
                  Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Padding(padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Nicole Loy',
                              hintStyle: TextStyle(fontSize: 18,
                                  color: Colors.blueAccent,
                                ),
                            ),
                           ),
                         ),
                        ),

                        Center(
                          child: Padding(padding: EdgeInsets.all(5.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '192227R@mymail.nyp.edu.sg',
                              hintStyle: TextStyle(fontSize: 18,
                                  color: Colors.blueAccent,
                                ),
                            ),
                           ),
                         ),
                        ),
                       ],
                    ),
                   ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: ButtonTheme(
                      minWidth: 375,
                      height: 50,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      },
                      color: Colors.blue[600],
                      highlightColor: Colors.blueGrey,
                      
                      padding: const EdgeInsets.all(8.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child:
                          Text('Update Profile',
                          style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    ),
    );
  }
}