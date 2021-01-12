import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:fcharts/fcharts.dart';
import 'package:usage/view/profileView.dart';
import 'package:usage/view/startView.dart';
import '../widgets/Statistik_bulanan_card.dart';

class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => new _StatisticsState();
}

class _StatisticsState extends State {
  List data;

  Future<String> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull(
            "https://my-json-server.typicode.com/Gundho/testjson/Statistik_bulanan"),
        headers: {"Accept": "application/json"});
    setState(() {
      data = json.decode(response.body);
    });

    return "Success!";
  }

  static const myData = [
    ["Jan", "0.03"],
    ["Feb", "0.04"],
    ["Mar", "0.05"],
    ["Apr", "0.04"],
  ];

  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          'Statistic',
          style: TextStyle(color: Colors.grey[200]),
        ),
        backgroundColor: Color.fromRGBO(127, 205, 145, 1),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.grey[200],
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.label,
              color: Colors.grey[200],
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Start()));
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Text(
              'Lama Penggunaan Satu Bulan',
              style: TextStyle(
                  color: Color.fromRGBO(131, 127, 127, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: LineChart(
              lines: [
                new Line<List<String>, String, String>(
                  data: myData,
                  xFn: (datum) => datum[0],
                  yFn: (datum) => datum[1],
                ),
              ],
              chartPadding: new EdgeInsets.fromLTRB(40.0, 10.0, 10.0, 20.0),
            ),
          ),
          Divider(
            height: 3,
            thickness: 3,
            indent: 5,
            endIndent: 5,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: new ListView.builder(
                itemCount: data == null ? 0 : data.length,
                itemBuilder: (BuildContext context, int index) {
                  return new Stat_bln(
                      bulan: data[index]["bulan"],
                      tegangan: data[index]["konsumsi_energi"],
                      tagihan: data[index]["perkiraan_tagihan"]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
