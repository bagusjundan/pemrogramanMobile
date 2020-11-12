import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputAngka extends StatelessWidget {
  final String namaInput;
  final String hintText;

  InputAngka({this.namaInput, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          namaInput + ' : ',
          style: TextStyle(
              fontSize: 15,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              color: Colors.grey[200]),
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[200]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[200]),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[200]),
                ),
                hintStyle: TextStyle(color: Colors.grey[200]),
                hintText: hintText,
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(1),
                labelText: null),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
      ],
    );
  }
}

class InputHuruf extends StatelessWidget {
  final String namaInput;
  final String hintText;

  InputHuruf({this.namaInput, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          namaInput + ' : ',
          style: TextStyle(
              fontSize: 15,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              color: Colors.grey[200]),
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[200]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[200]),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[200]),
                ),
                hintStyle: TextStyle(color: Colors.grey[200]),
                hintText: hintText,
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(1),
                labelText: null),
            keyboardType: TextInputType.text,
          ),
        ),
      ],
    );
  }
}
