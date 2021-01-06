import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:usage/view/homeView.dart';
import 'package:usage/view/signUpView.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var username = 'pengguna1';
  var password = '123';
  var inputUsename = '';
  var inputPassword = '';
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
                  style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(127, 205, 145, 1)),
                ),
              ),
            ),
            Expanded(
              child: TextField(
                onChanged: (String t) {
                  inputUsename = t;
                },
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
                        fontSize: 17.0,
                        color: Color.fromRGBO(131, 127, 127, 1)),
                    hintText: 'Username',
                    isDense: true,
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
                  style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(127, 205, 145, 1)),
                ),
              ),
            ),
            Expanded(
              child: TextField(
                onChanged: (String t) {
                  inputPassword = t;
                },
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
                        fontSize: 17.0,
                        color: Color.fromRGBO(131, 127, 127, 1)),
                    hintText: 'Password',
                    isDense: true,
                    labelText: null),
                obscureText: true,
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
                      'LOGIN',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(127, 205, 145, 1)),
                    ),
                    onPressed: () {
                      if (inputUsename == username &&
                          inputPassword == password) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavBar()));
                      }
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an account? ',
                    style: TextStyle(
                        fontSize: 17, color: Color.fromRGBO(131, 127, 127, 1))),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text("Sign Up",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color.fromRGBO(127, 205, 145, 1))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
