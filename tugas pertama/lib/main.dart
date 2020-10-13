import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Tugas Mobile 1",
    home: new HalamanSatu(),
    debugShowCheckedModeBanner: false,
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.red[700],
        leading: new Icon(Icons.home),
        title: new Center(child: new Text("Kelompok 1 dan SDGs 7"),),
        actions: <Widget>[
          new Icon(Icons.search)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: Text("Anggota Kelompok :", style: TextStyle(fontSize: 16))),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text("1. Febria Erliana Hadi - 182410102003", style: TextStyle(fontSize: 16))),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text("2. Ashoh Bagus Jundan  - 182410102034", style: TextStyle(fontSize: 16))),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text("3. Miantoko Gundho P N - 182410102049", style: TextStyle(fontSize: 16))),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Text("4. Sylvia Rizky Anissa - 182410102052", style: TextStyle(fontSize: 16))),

        ],
      )
    );
  }
}