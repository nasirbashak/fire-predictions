import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
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
