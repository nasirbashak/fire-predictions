import 'package:fireprediction/screens/auth/login.dart';
import 'package:fireprediction/screens/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {

  bool toggleView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      resizeToAvoidBottomPadding: true,
        appBar: AppBar(
          title: Text("Fire Prediction"),
          leading: IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.info),

          ),
          actions: <Widget>[
            toggleView?
            RaisedButton.icon(
              color:  Theme.of(context).primaryColor,
              //color: Colors.black,
              elevation: 0.0,
              highlightColor: Colors.deepOrange,
              label: Text("New user?\nRegister",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 16.0
              ),),
              onPressed: (){
                setState(() {
                  toggleView = !toggleView;
                });
              },
              icon: Icon(Icons.person_add,
              color: Colors.white,
              ),
            ):
            RaisedButton.icon(
              color:  Theme.of(context).primaryColor,
              elevation: 0.0,
              highlightColor: Colors.deepOrange,
              label: Text("Already user?\nLogin",
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: 16.0
                ),),
              onPressed: (){
                setState(() {
                  toggleView = !toggleView;
                });
              },
              icon: Icon(Icons.person,
                color: Colors.white,
              ),
            ),

          ],
        ),

        body: toggleView ? Login(): Register(),
    );
  }
}
