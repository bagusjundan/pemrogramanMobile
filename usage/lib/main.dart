import 'package:flutter/material.dart';
import 'view/loginView.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Login(),
    },
  ));
}
