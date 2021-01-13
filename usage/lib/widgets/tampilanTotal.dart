import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalBox extends StatelessWidget {
  final String totalPerangkat;
  final String totalTegangan;
  final String totalPenggunaan;

  TotalBox({this.totalPerangkat, this.totalTegangan, this.totalPenggunaan});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '''TOTAL
                PERANGKAT''',
                textAlign: TextAlign.center,
                style: GoogleFonts.itim(
                  textStyle: TextStyle(
                    fontSize: 13.0,
                    height: 0.5,
                    color: Color.fromRGBO(127, 205, 145, 1)),
                )
              ),
              Text(
                totalPerangkat,
                textAlign: TextAlign.center,
                style: GoogleFonts.allerta(
                  textStyle: TextStyle(
                    fontSize: 25.0,
                    height: 2,
                    color: Color.fromRGBO(131, 127, 127, 1)),
                )
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '''TOTAL
                TEGANGAN''',
                textAlign: TextAlign.center,
                style: GoogleFonts.itim(
                  textStyle: TextStyle(
                    fontSize: 13.0,
                    height: 0.5,
                    color: Color.fromRGBO(127, 205, 145, 1)),
                )
              ),
              Text(
                totalTegangan + ' W',
                textAlign: TextAlign.center,
                style: GoogleFonts.allerta(
                  textStyle: TextStyle(
                    fontSize: 25.0,
                    height: 2,
                    color: Color.fromRGBO(131, 127, 127, 1)),
                )
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '''TOTAL
                PENGGUNAAN''',
                textAlign: TextAlign.center,
                style: GoogleFonts.itim(
                  textStyle: TextStyle(
                    fontSize: 13.0,
                    height: 0.5,
                    color: Color.fromRGBO(127, 205, 145, 1)),
                )
              ),
              Text(
                totalPenggunaan + ' Jam',
                textAlign: TextAlign.center,
                style: GoogleFonts.allerta(
                  textStyle: TextStyle(
                    fontSize: 25.0,
                    height: 2,
                    color: Color.fromRGBO(131, 127, 127, 1)),
                )
              ),
            ],
          ),
        ),
      ],
    );
  }
}
