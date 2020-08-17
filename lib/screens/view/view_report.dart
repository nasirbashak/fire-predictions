import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fireprediction/models/file_report.dart';
import 'package:fireprediction/screens/home/report_list.dart';
import 'package:fireprediction/services/databaseservice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewReport extends StatefulWidget {
  @override
  _ViewReportState createState() => _ViewReportState();
}

class _ViewReportState extends State<ViewReport> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<FileReport>>.value(
      value: DatabaseService().reports,
      child: Scaffold(
        appBar: AppBar(
          title: Text('View Report'),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 20.0,top: 20.0),
          child: ReportList(),
        ),
      ),
    );
  }
}
