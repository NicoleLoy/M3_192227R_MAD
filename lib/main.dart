import 'package:flutter/material.dart';
import 'user.dart';
import 'regist.dart';
void main() => runApp(Login());

class Login extends StatelessWidget {
  //this widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Please Login to Proceed'),
          backgroundColor: Colors.blueGrey,
        ),
        body: contentBody,
      ),
    );
  }
}

//Seperate content from the app classes
var contentBody =
    MyCustomWidget();

class MyCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Align(
      alignment:Alignment.center,
      child:Container(
        decoration: new BoxDecoration(
          color: Colors.purple,
          gradient: new LinearGradient(
            colors: [Colors.blue[400], Colors.cyan],
            begin: Alignment.centerRight,
            end: new Alignment(-1.0, -1.0)
          ),
        ),
        

      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
                 padding: const EdgeInsets.all(0.0),
                 child: Container(
                   child:
                   Text(
                     'EaseCycle',
                     style:
                        TextStyle(color: Colors.black,
                        fontSize: 32,
                        ),
                     ),
                  ),
                ),

          //Username
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
            child: TextField(decoration: InputDecoration(
            hintText: 'Username',
            hintStyle: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
              ),

              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.orange,
              ),
              borderRadius: BorderRadius.circular(10),
              ),

              contentPadding: const EdgeInsets.all(15),
            ),
           ),
          ),

          //Password
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
            child:TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding: const EdgeInsets.all(15),
              ),
            ),
          ),


          Padding(
                 padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
               child: ButtonTheme(
                 minWidth: 375,
                 height: 50,
                 child: RaisedButton(
                 onPressed: () {
                   Navigator.push(context,
                   MaterialPageRoute(builder: (context) => MyApp(),),
                   );
                  },
                  color: Colors.orange[300],
                  highlightColor: Colors.blueGrey,

                  padding: const EdgeInsets.all(8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                  child: Center( 
                    child:
                    Text('Login',
                    style: TextStyle(fontSize: 18,),
                    ),
                  ),
                ),
               ),
             ),
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                child: InkWell(
                  
                  onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Registration(),),
                    );
                  },
                  child: Center( 
                    child:
                    Text('Click here to Register',
                    style: TextStyle(fontSize: 16,
                    color:Colors.orange[200],
                    ),
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

  