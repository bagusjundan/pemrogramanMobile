import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:usage/view/signUpView.dart';
import 'package:usage/view/loginView.dart';
import 'package:google_fonts/google_fonts.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 120, 50, 90),
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
              height: 10,
            ),
            Text(
              'usage',
              style: GoogleFonts.fredokaOne(
              textStyle: TextStyle(
                  fontSize: 45,
                  color: Color.fromRGBO(127, 205, 145, 1),
                ),
              )
            ),
            Text(
              'your energy counter',
              style: GoogleFonts.itim(
              textStyle: TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(127, 205, 145, 1),
                fontStyle: FontStyle.italic,
              ),
              )
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
                      style: GoogleFonts.itim(
                      textStyle: TextStyle(
                          fontSize: 22,
                          color: Color.fromRGBO(127, 205, 145, 1)),
                      )
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
            SizedBox(
              height: 20,
            ),
            Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ButtonTheme(
                  height: 60.0,
                  minWidth: 250.0,
                  child: FlatButton(
                    child: Text(
                      'SIGN UP',
                      style: GoogleFonts.itim(
                      textStyle: TextStyle(
                        fontSize: 22, color: Colors.grey[200]),
                      )
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Color.fromRGBO(127, 205, 145, 1),
                            width: 1.5,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Color.fromRGBO(127, 205, 145, 1),
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
