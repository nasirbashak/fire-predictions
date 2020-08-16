import 'package:flutter/material.dart';

class ViewReport extends StatefulWidget {
  @override
  _ViewReportState createState() => _ViewReportState();
}

class _ViewReportState extends State<ViewReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Report'),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20.0,top: 20.0),
        child: DataTable(
          columns: <DataColumn>[
            DataColumn(
              label: Text('Date'),
              numeric: false,
            ),
            DataColumn(
              label: Text('Cause'),
              numeric: false,
            ),
            DataColumn(
              label: Text('Place'),
              numeric: false,
            ),
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(
                  Text("8/16/2020"),
                ),
                DataCell(
                  Text("Candle"),
                ),
                DataCell(
                  Text("Bangalore"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
