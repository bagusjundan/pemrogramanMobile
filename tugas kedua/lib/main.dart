import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    title: 'Kalkulator Energi',
    home: BottomNavPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class BottomNavPage extends StatefulWidget {
  @override
  _BottomNavPageState createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
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
        icon: Icon(Icons.bar_chart),
        title: Text('Chart'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.table_chart),
        title: Text('Statistik'),
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
        backgroundColor: Colors.green[400],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Container(
              height: 200,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: BoxDecoration(
                color: Colors.green[400],
                boxShadow: [BoxShadow(blurRadius: 40.0)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Daya        :',
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Daya',
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
                  ),
                  Divider(
                    height: 10,
                    thickness: 2,
                    indent: 0,
                    endIndent: 0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Perangkat:',
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Nama Perangkat',
                              isDense: true, // Added this
                              contentPadding: EdgeInsets.all(1),
                              labelText: null),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(94, 0, 0, 0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Tegangan',
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(1),
                          labelText: null),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(94, 0, 0, 0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Lama Pengunaan dalam sehari',
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(1),
                          labelText: null),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(94, 0, 0, 0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Jumlah Perangkat sejenis',
                          isDense: true, // Added this
                          contentPadding: EdgeInsets.all(1),
                          labelText: null),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonBar(
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () {},
                            color: Colors.white,
                            child: Text('Tambah'),
                          ),
                          RaisedButton(
                            onPressed: () {},
                            color: Colors.green,
                            child: Text('Simpan'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              //color: Colors.green[300],
              //height: 200,
            ),
          ),
          //Data dibawah masih contoh
          Expanded(
            child: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Card(
                      child: Column(
                        children: [
                          Text('Nama Perangkat: lampu'),
                          Text('Tegangan: 10 watt'),
                          Text('Lama Penggunaan: 6 jam'),
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
                    ),
                    Card(
                      child: Column(
                        children: [
                          Text('Nama Perangkat: lampu'),
                          Text('Tegangan: 10 watt'),
                          Text('Lama Penggunaan: 6 jam'),
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
                    ),
                    Card(
                      child: Column(
                        children: [
                          Text('Nama Perangkat: lampu'),
                          Text('Tegangan: 10 watt'),
                          Text('Lama Penggunaan: 6 jam'),
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
                    ),
                    Card(
                      child: Column(
                        children: [
                          Text('Nama Perangkat: lampu'),
                          Text('Tegangan: 10 watt'),
                          Text('Lama Penggunaan: 6 jam'),
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
                    ),
                    Card(
                      child: Column(
                        children: [
                          Text('Nama Perangkat: lampu'),
                          Text('Tegangan: 10 watt'),
                          Text('Lama Penggunaan: 6 jam'),
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
                    ),
                    Card(
                      child: Column(
                        children: [
                          Text('Nama Perangkat: lampu'),
                          Text('Tegangan: 10 watt'),
                          Text('Lama Penggunaan: 6 jam'),
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
                    ),
                    Card(
                      child: Column(
                        children: [
                          Text('Nama Perangkat: lampu'),
                          Text('Tegangan: 10 watt'),
                          Text('Lama Penggunaan: 6 jam'),
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
                    ),
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
