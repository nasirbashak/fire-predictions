import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fireprediction/models/file_report.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReportList extends StatefulWidget {
  @override
  _ReportListState createState() => _ReportListState();
}

class _ReportListState extends State<ReportList> {
  @override
  Widget build(BuildContext context) {

    final reports = Provider.of<List<FileReport>>(context);

    if(reports != null) {
      reports.forEach((report) {
        print(report.place);
        print(report.damage);
        print(report.date);
        print(report.cause);
        print(report.incident);
        print(report.happeningAgain);
      });

      return Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Date',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),),
              Text('Place',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),),
              Text('Incident',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),),
              Text('Cause',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),),
            ],
          ),
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
            itemCount: reports.length,
              itemBuilder: (context,index){
                return ReportRow(report: reports[index]);
              }
          ),
        ],
      );


    }else{
      return  Center(
        child: Text("Loading....",
          style: TextStyle(
          fontSize: 28.0,
          letterSpacing: 2.0,
        ),)
      );
    }

  }
}

class ReportRow extends StatelessWidget {

  final FileReport report;

  ReportRow({this.report});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.only(right: 5.0, left: 5.0, top: 10.0,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(report.date,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),),
          Text(report.place,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),),
          Text(report.incident,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),),
          Text(report.cause,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),),
          //Text(report.damage),
        ],
      ),
    );
  }
}



