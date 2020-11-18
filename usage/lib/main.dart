import 'package:flutter/material.dart';
import 'view/startView.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Start(),
    },
  ));
}
