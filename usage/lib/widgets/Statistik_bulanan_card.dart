import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Stat_bln extends StatelessWidget {
  final String bulan;
  final String tegangan;
  final String tagihan;

  Stat_bln({this.bulan, this.tegangan, this.tagihan});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 20, 0, 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Rangkuman Hasil",
                    style: GoogleFonts.itim(
                    textStyle: TextStyle(
                        color: Color.fromRGBO(131, 127, 127, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    )
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      text: "Bulan                       : ",
                      style: GoogleFonts.allerta(
                      textStyle: TextStyle(
                        color: Color.fromRGBO(131, 127, 127, 1))),
                      children: <TextSpan>[
                        TextSpan(
                            text: bulan,
                            style: GoogleFonts.allerta(
                      textStyle: TextStyle(
                                color: Color.fromRGBO(127, 205, 145, 1)))),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      text: "Konsumsi Energi   : ",
                      style: GoogleFonts.allerta(
                      textStyle: TextStyle(
                        color: Color.fromRGBO(131, 127, 127, 1))),
                      children: <TextSpan>[
                        TextSpan(
                            text: tegangan + ' Kwh',
                            style: GoogleFonts.allerta(
                      textStyle: TextStyle(
                                color: Color.fromRGBO(127, 205, 145, 1)))),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      text: "Perkiraan Tagihan : ",
                      style: GoogleFonts.allerta(
                      textStyle: TextStyle(
                        color: Color.fromRGBO(131, 127, 127, 1))),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Rp' + tagihan,
                            style: GoogleFonts.allerta(
                      textStyle: TextStyle(
                                color: Color.fromRGBO(127, 205, 145, 1)))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
