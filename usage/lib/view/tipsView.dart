import 'package:flutter/material.dart';
import 'package:usage/view/profileView.dart';
import 'package:usage/view/startView.dart';

class Tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tips',
          style: TextStyle(color: Colors.grey[200]),
        ),
        backgroundColor: Color.fromRGBO(127, 205, 145, 1),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.grey[200],
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
              Icons.label,
              color: Colors.grey[200],
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Start()));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                Column(
                  children: [
                    Container(
                      color: Colors.grey[200],
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/ac.png'),
                                  fit: BoxFit.fill),
                            ),
                            // color: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 210.0,
                            height: 170.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Air Conditioner',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(131, 127, 127, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '- Tutup jendela dan pintu saat AC dinyalakan',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 205, 145, 1)),
                                ),
                                Text(
                                  '- Matikan AC jika ruangan tidak dipergunakan',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 205, 145, 1)),
                                ),
                                Text(
                                  '- Bersihkan filter dan kompresor AC secara berkala',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 205, 145, 1)),
                                ),
                                Text(
                                  '- Gunakan Timer dan Power Saver untuk mengatur pemakaian AC',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 205, 145, 1)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 5,
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Container(
                      color: Colors.grey[200],
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 90.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/tv.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 210.0,
                            height: 120.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Televisi',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(131, 127, 127, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '- Pilih Model TV dengan teknologi Hemat Energi',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 205, 145, 1)),
                                ),
                                Text(
                                  '- Atur Penggunaan TV sesuai dengan kebutuhan',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 205, 145, 1)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 5,
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Container(
                      color: Colors.grey[200],
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 70.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/kulkas.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Container(
                            width: 210.0,
                            height: 177.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kulkas',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(131, 127, 127, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '- Atur suhu kulkas sesuai dengan kebutuhan',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 205, 145, 1)),
                                ),
                                Text(
                                  '- Isi kulkas secukupnya, jangan terlalu penuh',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 205, 145, 1)),
                                ),
                                Text(
                                  '- Tidak sering membuka pintu kulkas',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 205, 145, 1)),
                                ),
                                Text(
                                  '- Jangan memasukkan makanan / minuman yang masih panas',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 205, 145, 1)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 5,
                      thickness: 1,
                      indent: 5,
                      endIndent: 5,
                    ),
                    Container(
                      color: Colors.grey[200],
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 80.0,
                            height: 130.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/lampu.png'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            width: 210.0,
                            height: 177.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lampu',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(131, 127, 127, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '- Matikan lampu bila tidak digunakan',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 205, 145, 1)),
                                ),
                                Text(
                                  '- Saat siang hari, kurangi pemakaian lampu',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 205, 145, 1)),
                                ),
                                Text(
                                  '- Gunakan banyak titik lampu,dengan daya rendah',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 205, 145, 1)),
                                ),
                                Text(
                                  '- Gunakan lampu Hemat Energi',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 205, 145, 1)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
