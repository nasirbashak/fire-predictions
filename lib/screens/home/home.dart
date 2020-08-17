import 'package:fireprediction/models/user.dart';
import 'package:flutter/material.dart';

import '../../services/authservice.dart';
import '../firedetails/fire_input_details.dart';
import '../firedetails/fire_input_details.dart';
import '../view/view_report.dart';

class Home extends StatefulWidget {
  final user;
  Home({this.user});

  @override
  _HomeState createState() => _HomeState(user:user);
}

class _HomeState extends State<Home> {

  AuthService _authService = AuthService();
  final user;
  _HomeState({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fire Prediction"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.info),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              _authService.signout();
            },
            icon: Icon(Icons.exit_to_app),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 100.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Report',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('Is the Incident Related to Fire?'),
                SizedBox(
                  height: 10.0,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FireInputDetails(user: user)));

                  },
                  child: Text("Yes"),
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 200.0,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Text("View the Existing Report"),
                SizedBox(
                  height: 10.0,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ViewReport()));

                  },
                  child: Text("View Report"),
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
