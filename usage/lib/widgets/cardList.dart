import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardList extends StatelessWidget {
  final String namaPerangkat;
  final String tegangan;
  final String lamaPenggunaan;

  CardList({this.namaPerangkat, this.tegangan, this.lamaPenggunaan});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            'Nama Perangkat: ' + namaPerangkat,
            style: GoogleFonts.allerta(
            textStyle: TextStyle(
              color: Color.fromRGBO(131, 127, 127, 1)),)
          ),
          Text(
            'Tegangan: ' + tegangan + ' Watt',
            style: GoogleFonts.allerta(
            textStyle: TextStyle(
              color: Color.fromRGBO(131, 127, 127, 1)),)
          ),
          Text(
            'Lama Penggunaan: ' + lamaPenggunaan + ' Jam',
            style: GoogleFonts.allerta(
            textStyle: TextStyle(
              color: Color.fromRGBO(131, 127, 127, 1)),)
          ),
          Divider(
            height: 5,
            thickness: 1,
            indent: 5,
            endIndent: 5,
          ),
          FlatButton.icon(
            onPressed: () {},
            label: Text(
              'HAPUS',
              style: GoogleFonts.allerta(
              textStyle: TextStyle(
                color: Color.fromRGBO(255, 130, 130, 1)),)
            ),
            icon: Icon(Icons.delete, color: Color.fromRGBO(255, 130, 130, 1)),
          ),
        ],
      ),
    );
  }
}
