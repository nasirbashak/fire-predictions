
import 'package:fireprediction/models/file_report.dart';
import 'package:fireprediction/services/databaseservice.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

import '../../models/user.dart';

class FireInputDetails extends StatefulWidget {

  User user;

  FireInputDetails({this.user});

  @override
  _FireInputDetailsState createState() => _FireInputDetailsState(user1:user);
}

class _FireInputDetailsState extends State<FireInputDetails> {
  final user1;

  _FireInputDetailsState({this.user1});

  String incident;
  String cause;
  String date;
  String place;
  String damage;
  bool happeningAgain = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fire Details'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Incident',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (data){
                        incident = data;
                      },
                      decoration: InputDecoration(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Cause',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (data){
                        cause = data;
                      },
                      decoration: InputDecoration(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Date',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Expanded(
                    child: DateTimePicker(
                      onChanged: (data){
                        date = data.toString();
                      },
                      dateMask: 'dd MM, yyyy',
                      initialValue: DateTime.now().toString(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                      icon: Icon(Icons.event),
                      dateLabelText: 'Date',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Place',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (data){
                        place = data;
                      },
                      decoration: InputDecoration(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Damage',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: TextField(
                      onChanged: (data){
                        damage = data;
                      },
                      decoration: InputDecoration(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Add Images of Fire Site',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {},
                      child: Text('Add Image'),
                      color: Colors.blue,
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Any chances of repeating again? Is the same incident occured even before.',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      setState(() {
                        happeningAgain = !happeningAgain;

                      });
                    },
                    child: happeningAgain?Text('Yes'): Text('No'),
                    color: happeningAgain?Colors.blue: Colors.red,
                    textColor: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 100.0,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {

                      FileReport _fileReport = FileReport(incident: incident,cause: cause,date: date,place: place,damage: damage,happeningAgain: happeningAgain);
                      DatabaseService _databaseService = DatabaseService(user:user1);

                      dynamic responce =  _databaseService.uploadReport(_fileReport);

                      if(responce != null){
                        print("Upload Successful");
                        Navigator.pop(context);
                      }else{
                        print("Upload Failed");
                      }



                    },
                    child: Text('Submit'),
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
