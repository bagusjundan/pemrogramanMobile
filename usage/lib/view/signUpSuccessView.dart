import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:usage/view/loginView.dart';

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 150, 50, 90),
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
              'ANDA SUDAH TERDAFTAR',
              style: TextStyle(
                  fontSize: 21,
                  color: Color.fromRGBO(131, 127, 127, 1),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Silahkan login dengan username dan password anda',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Color.fromRGBO(127, 205, 145, 1),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ButtonTheme(
                  height: 60.0,
                  minWidth: 250.0,
                  child: FlatButton(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(127, 205, 145, 1)),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color.fromRGBO(127, 205, 145, 1),
                            width: 1.5,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Colors.grey[200],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
