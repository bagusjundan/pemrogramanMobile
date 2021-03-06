import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:usage/view/loginView.dart';
import 'package:usage/view/signUpSuccessView.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // set it to false
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
              height: 50,
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                child: Text(
                  'USERNAME',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.itim(
                  textStyle: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(127, 205, 145, 1)),
                  )
                ),
              ),
            ),
            Expanded(
              child: TextField(
                style: TextStyle(color: Color.fromRGBO(131, 127, 127, 1)),
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(127, 205, 145, 1)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(127, 205, 145, 1)),
                    ),
                    hintStyle: TextStyle(
                        fontSize: 16.0,
                        color: Color.fromRGBO(205, 200, 200, 1)
                        
                    ),
                    hintText: 'tulis username-mu',
                    isDense: true, // Added this
                    labelText: null),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: Container(
                child: Text(
                  'PASSWORD',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.itim(
                  textStyle: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(127, 205, 145, 1)),
                  )
                ),
              ),
            ),
            Expanded(
              child: TextField(
                style: TextStyle(color: Color.fromRGBO(131, 127, 127, 1)),
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(127, 205, 145, 1)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(127, 205, 145, 1)),
                    ),
                    hintStyle: TextStyle(
                        fontSize: 16.0,
                        color: Color.fromRGBO(205, 200, 200, 1)
                        
                    ),
                    hintText: 'tulis password-mu',
                    isDense: true, // Added this
                    labelText: null),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 50,
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
                          MaterialPageRoute(builder: (context) => Success()));
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an Account? ',
                    style: GoogleFonts.allerta(
                      textStyle: TextStyle(
                        fontSize: 15, color: Color.fromRGBO(131, 127, 127, 1)))),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text("Login",
                      style: GoogleFonts.allerta(
                      textStyle: TextStyle(
                          fontSize: 15,
                          color: Color.fromRGBO(127, 205, 145, 1)))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
