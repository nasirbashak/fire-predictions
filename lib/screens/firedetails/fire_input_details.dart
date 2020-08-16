
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

class FireInputDetails extends StatefulWidget {
  @override
  _FireInputDetailsState createState() => _FireInputDetailsState();
}

class _FireInputDetailsState extends State<FireInputDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fire Details'),
      ),
      body: Container(
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

                  },
                  child: Text('Yes'),
                  color: Colors.blue,
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
    );
  }
}
