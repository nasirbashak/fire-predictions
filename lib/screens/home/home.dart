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
        title: Text("Fire PRediction"),
        leading: IconButton(
          onPressed: (){

          },
          icon: Icon(Icons.info),

        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){

            },
            icon: Icon(Icons.more_horiz),

          )
        ],
      ),
      body: Container(
        child: Center(
          child: Text("Home"),
        ),
      )
    );
  }
}
