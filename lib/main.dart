import "package:flutter/material.dart";

void main() {
  runApp(TheTable());
}

class TheTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DATA TABLE",
      home: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [Text("Table",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.blueAccent),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DataTable(
                  columns: [
                    DataColumn(
                        label: Text(
                      'Course',
                      style: TextStyle(fontSize: 25),
                    )),
                    DataColumn(
                        label: Text("College", style: TextStyle(fontSize: 25))),
                    DataColumn(
                        label: Text("Branch", style: TextStyle(fontSize: 25)))
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text(
                        "B.Tech",
                        style: TextStyle(fontSize: 23),
                      )),
                      DataCell(Text("MMMUT", style: TextStyle(fontSize: 23))),
                      DataCell(Text("CSE", style: TextStyle(fontSize: 23)))
                    ])
                  ,DataRow(cells: [
                      DataCell(Text(
                        "B.Tech",
                        style: TextStyle(fontSize: 23),
                      )),
                      DataCell(Text("HBTU", style: TextStyle(fontSize: 23))),
                      DataCell(Text("IT", style: TextStyle(fontSize: 23)))
                    ]),DataRow(cells: [
                      DataCell(Text(
                        "B.Tech",
                        style: TextStyle(fontSize: 23),
                      )),
                      DataCell(Text("IET", style: TextStyle(fontSize: 23))),
                      DataCell(Text("ME", style: TextStyle(fontSize: 23)))
                    ])],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
