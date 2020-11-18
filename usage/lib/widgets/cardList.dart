import 'package:flutter/material.dart';

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
            style: TextStyle(color: Color.fromRGBO(131, 127, 127, 1)),
          ),
          Text(
            'Tegangan: ' + tegangan + ' Watt',
            style: TextStyle(color: Color.fromRGBO(131, 127, 127, 1)),
          ),
          Text(
            'Lama Penggunaan: ' + lamaPenggunaan + ' Jam',
            style: TextStyle(color: Color.fromRGBO(131, 127, 127, 1)),
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
              'Hapus',
              style: TextStyle(color: Color.fromRGBO(131, 127, 127, 1)),
            ),
            icon: Icon(Icons.delete, color: Color.fromRGBO(131, 127, 127, 1)),
          ),
        ],
      ),
    );
  }
}
