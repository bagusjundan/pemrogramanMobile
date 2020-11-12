import 'package:flutter/material.dart';

class TotalBox extends StatelessWidget {
  final String totalPerangkat;
  final String totalTegangan;
  final String totalPenggunaan;

  TotalBox({this.totalPerangkat, this.totalTegangan, this.totalPenggunaan});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                topLeft: Radius.circular(20.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '''Total
                Perangkat''',
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontSize: 14.0, height: 0.5, color: Colors.green),
              ),
              Text(
                totalPerangkat,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, height: 2, color: Colors.blue),
              ),
            ],
          ),
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white, border: Border.all(color: Colors.black)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '''Total
                Tegangan''',
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontSize: 14.0, height: 0.5, color: Colors.green),
              ),
              Text(
                totalTegangan + ' W',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, height: 2, color: Colors.blue),
              ),
            ],
          ),
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.0),
                topRight: Radius.circular(20.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '''Total
                Penggunaan''',
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontSize: 14.0, height: 0.5, color: Colors.green),
              ),
              Text(
                totalPenggunaan + ' Jam',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, height: 2, color: Colors.blue),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
