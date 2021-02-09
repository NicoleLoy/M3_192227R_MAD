import 'package:flutter/material.dart';
import 'main.dart';
void main() => runApp(Registration());

class Registration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Registration';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          backgroundColor: Colors.blueGrey,
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,

      child:Container(
        decoration: new BoxDecoration(
          color: Colors.purple,
          gradient: new LinearGradient(
            colors: [Colors.blue[400], Colors.cyan],
            begin: Alignment.centerRight,
            end: new Alignment(-1.0, -1.0)
          ),
        ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          //Username
          Padding(
            padding:const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
            child: TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter a username';
                }
                return null;
              },

              decoration: InputDecoration(
                hintText: 'Username',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),

              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  ),
              ),

              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.orange,
              ),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
            ),
           ),
          ),

          //Email
          Padding(
            padding:const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
            child:TextFormField(
              validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),//Textstyle
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
              ),
            ),
          ),

          //Password
          Padding(
            padding:const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
            child: TextFormField(
              validator: (value) {
              if (value.isEmpty) {
                return 'Please enter a password';
              }
              return null;
            },
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.black
              ),

              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  ),
              ),

              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.orange,
              ),
              ),
              contentPadding:const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
              
            ),
           ),
          ),

          Padding(
                 padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
               child: ButtonTheme(
                // padding: const EdgeInsets.all(18.0),
                 minWidth: 375,
                 height: 50,
                 child: RaisedButton(
                 onPressed: () {
                   Navigator.push(context,
                   MaterialPageRoute(builder: (context) => Login()),
                   );
                  },
                  color: Colors.orange[300],
                  highlightColor: Colors.blueGrey,

                  padding: const EdgeInsets.all(8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                  child: Center( 
                    child:
                    Text('Register',
                    style: TextStyle(fontSize: 18),
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