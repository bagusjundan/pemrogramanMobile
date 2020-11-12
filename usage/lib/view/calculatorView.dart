import 'package:flutter/material.dart';
import '../widgets/cardList.dart';
import '../widgets/formInput.dart';
import '../widgets/tampilanTotal.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.calculate),
        title: Text('Kalkulator'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.table_chart),
        title: Text('Statistik'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.lightbulb),
        title: Text('Tips'),
      ),
    ];
    final _bottomNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: Colors.grey,
      onTap: _onNavBarTapped,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator'),
        backgroundColor: Colors.green[600],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Container(
              height: 280,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: BoxDecoration(
                color: Colors.green[400],
                boxShadow: [BoxShadow(blurRadius: 40.0)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputAngka(
                    namaInput: 'Daya',
                    hintText: 'Daya',
                  ),
                  Divider(
                    height: 10,
                    thickness: 2,
                    indent: 0,
                    endIndent: 0,
                  ),
                  InputHuruf(
                    namaInput: 'Perangkat',
                    hintText: 'Nama Perangkat',
                  ),
                  InputAngka(
                    namaInput: 'Tegangan',
                    hintText: 'Tegangan',
                  ),
                  InputAngka(
                    namaInput: 'Waktu',
                    hintText: 'Lama Penggunaan Dalam Sehari',
                  ),
                  InputAngka(
                    namaInput: 'Jumlah',
                    hintText: 'Jumlah Perangkat Sejenis',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RaisedButton(
                        onPressed: () {},
                        color: Colors.white,
                        child: Text(
                          'Tambah',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                  TotalBox(
                    totalPerangkat: '3',
                    totalTegangan: '30',
                    totalPenggunaan: '15',
                  ),
                ],
              ),
            ),
          ),
          //Data dibawah masih contoh
          Expanded(
            child: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    CardList(
                      namaPerangkat: 'lampu',
                      tegangan: '10',
                      lamaPenggunaan: '5',
                    ),
                    CardList(
                      namaPerangkat: 'lampu',
                      tegangan: '10',
                      lamaPenggunaan: '5',
                    ),
                    CardList(
                      namaPerangkat: 'lampu',
                      tegangan: '10',
                      lamaPenggunaan: '5',
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
