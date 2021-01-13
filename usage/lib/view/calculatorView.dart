import 'package:flutter/material.dart';
import 'package:usage/view/profileView.dart';
import 'package:usage/view/startView.dart';
import '../widgets/cardList.dart';
import '../widgets/formInput.dart';
import '../widgets/tampilanTotal.dart';
import 'package:google_fonts/google_fonts.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var daftarPerangkat = [
    'Lampu',
    'AC',
    'Kulkas',
    'TV',
  ];

  var perangkatVal = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
          style: GoogleFonts.fredokaOne(
              textStyle: TextStyle(
            color: Color.fromRGBO(127, 205, 145, 1)),
          )
        ),
        backgroundColor: Colors.grey[200],
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person,
              color: Color.fromRGBO(127, 205, 145, 1),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Color.fromRGBO(127, 205, 145, 1),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Start()));
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Container(
              height: 310,
              padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(127, 205, 145, 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputAngka(
                    namaInput: 'Daya        ',
                    hintText: null,
                  ),
                  Row(
                    children: [
                      Text(
                        'Perangkat' + ' : ',
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[200]),
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (String t) {
                            perangkatVal = t;
                          },
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
                              isDense: true, // Added this
                              contentPadding: EdgeInsets.all(1),
                              labelText: null),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ],
                  ),
                  InputAngka(
                    namaInput: 'Tegangan ',
                    hintText: null,
                  ),
                  InputAngka(
                    namaInput: 'Waktu      ',
                    hintText: null,
                  ),
                  InputAngka(
                    namaInput: 'Jumlah    ',
                    hintText: null,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: ButtonTheme(
                          height: 40.0,
                          minWidth: 100.0,
                          child: FlatButton(
                            onPressed: () {
                              setState(() {
                                daftarPerangkat.add(perangkatVal);
                              });
                            },
                            color: Colors.white,
                            child: Text(
                              'TAMBAH',
                              style: GoogleFonts.itim(
                                textStyle: TextStyle(
                                  color: Color.fromRGBO(131, 127, 127, 1)),
                              )
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
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
          Expanded(
            child: Container(
              width: double.infinity,
              child: ListView(
                children: daftarPerangkat.map((e) {
                  return CardList(
                    namaPerangkat: e,
                    tegangan: '10',
                    lamaPenggunaan: '5',
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
