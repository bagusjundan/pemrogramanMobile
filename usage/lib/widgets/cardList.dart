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
          Text('Nama Perangkat: ' + namaPerangkat),
          Text('Tegangan: ' + tegangan + ' Watt'),
          Text('Lama Penggunaan: ' + lamaPenggunaan + ' Jam'),
          Divider(
            height: 5,
            thickness: 1,
            indent: 5,
            endIndent: 5,
          ),
          FlatButton.icon(
            onPressed: () {},
            label: Text('Hapus'),
            icon: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
