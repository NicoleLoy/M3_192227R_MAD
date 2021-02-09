import 'package:flutter/material.dart';

class Setting extends StatefulWidget {

  @override
   State<StatefulWidget> createState() => new SettingScreen();
}

class SettingScreen extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.blue[50],
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
              Padding(padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  const SizedBox(height: 20.0),
                  Text(
                    "Notification Settings",
                    style: TextStyle(
                      fontSize: 20.0, 
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.only(bottom:10.0),),
                  SwitchListTile(
                    activeColor: Colors.blue,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Receive notifications"),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    activeColor: Colors.blue,
                    contentPadding: const EdgeInsets.all(0),
                    value: false,
                    title: Text("Receive newsletters"),
                    onChanged: (val) {},
                  ),
                  SwitchListTile(
                    activeColor: Colors.blue,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: Text("Receive App Updates"),
                    onChanged: (val) {},
                  ),

                  Padding(padding: const EdgeInsets.only(top:20.0),),
                  _buildDivider(),

                  const SizedBox(height: 10.0),
                  Padding(padding:const EdgeInsets.only(top:8.0),
                  child: Container(
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Other Settings",
                          style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),

                      Padding(padding:const EdgeInsets.all(8.0),),
                      
                        ListTile(
                          leading: Icon(
                            Icons.lock_outline,
                            color: Colors.blueGrey,
                          ),
                          title: Text("Change Password"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change password
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(
                            Icons.language,
                            color: Colors.blueGrey,
                          ),
                          title: Text("Change Language"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change language
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(
                            Icons.update,
                            color: Colors.blueGrey,
                          ),
                          title: Text("App Version 2.2.12"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change location
                          },
                        ),
                      ],
                    ),
                    ),
                  ),
                  const SizedBox(height: 60.0),
                ],
              ),
              ),
          ],
        ),
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}