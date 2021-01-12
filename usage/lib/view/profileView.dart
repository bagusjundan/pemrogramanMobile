import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:usage/view/imageView.dart';
import 'package:usage/_provider/app.dart';
import 'package:usage/view/statisticsView.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 100, 50, 40),
        child: Column(
          children: [
            Container(
              width: 80.0,
              height: 80.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/logo.png'), fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'PROFILE',
              style: TextStyle(
                  fontSize: 27,
                  color: Color.fromRGBO(127, 205, 145, 1),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text(
                  'USERNAME :',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(159, 162, 161, 1),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '  Pengguna1',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(131, 127, 127, 1),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'PASSWORD :',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(159, 162, 161, 1),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '  123',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(131, 127, 127, 1),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomRight,
                child: ButtonTheme(
                  height: 60.0,
                  minWidth: 130.0,
                  child: FlatButton(
                      child: Text(
                        'LIHAT FOTO',
                        style: TextStyle(fontSize: 18, color: Colors.grey[200]),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Images()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      color: Color.fromRGBO(127, 205, 145, 1)),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ButtonTheme(
                  height: 60.0,
                  minWidth: 130.0,
                  child: FlatButton(
                      child: Text(
                        'RIWAYAT',
                        style: TextStyle(fontSize: 18, color: Colors.grey[200]),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => App()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      color: Color.fromRGBO(255, 192, 0, 1)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
