
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fireprediction/models/file_report.dart';
import 'package:fireprediction/screens/home/report_list.dart';

class DatabaseService{

  final user ;

  DatabaseService({this.user});

  final CollectionReference reportCollection = Firestore.instance.collection("reports");


  Future uploadReport(FileReport report) async{

    return await reportCollection.document(user.uid).setData({
      'incident': report.incident,
      'cause': report.cause,
      'date': report.date,
      'place': report.place,
      'damage': report.damage,
      'happeningagain': report.happeningAgain
    });

  }

  Stream<List<FileReport>> get reports{
    return reportCollection.snapshots().map(_reportListFromSnapshot);
  }

  List<FileReport> _reportListFromSnapshot(QuerySnapshot snapshot){

    return snapshot.documents.map((doc){
      return FileReport(
        incident: doc.data['incident'] ?? '',
        damage: doc.data['damage'] ?? '',
        place:  doc.data['place'] ?? '',
        date:  doc.data['date'] ?? '',
        cause:  doc.data['cause'] ?? '',
        happeningAgain:  doc.data['happeningagain'] ?? '',


      );
    }).toList();

  }


}