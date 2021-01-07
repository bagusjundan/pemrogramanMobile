import 'package:flutter/material.dart';
import 'package:usage/view/calculatorView.dart';
import 'package:usage/view/profileView.dart';
import 'package:usage/view/statisticsView.dart';
// import 'package:usage/view/startView.dart';
//import 'package:usage/view/statisticsView.dart';
import 'package:usage/view/tipsView.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => new _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _pageIndex = 0;
  String titleName;
  PageController _pageController;

  List<Widget> tabPages = [
    Calculator(),
    Tips(),
    Statistics(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Calculator',
      //     style: TextStyle(color: Color.fromRGBO(127, 205, 145, 1)),
      //   ),
      //   backgroundColor: Colors.grey[200],
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(
      //         Icons.person,
      //         color: Color.fromRGBO(127, 205, 145, 1),
      //       ),
      //       onPressed: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => Profile()),
      //         );
      //       },
      //     ),
      //     IconButton(
      //       icon: Icon(
      //         Icons.logout,
      //         color: Color.fromRGBO(127, 205, 145, 1),
      //       ),
      //       onPressed: () {
      //         Navigator.pushReplacement(
      //             context, MaterialPageRoute(builder: (context) => Start()));
      //       },
      //     )
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: onTabTapped,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:
                Icon(Icons.cake, color: Color.fromRGBO(127, 205, 145, 1)),
            title: Text(
              'Calculator',
              style: TextStyle(color: Color.fromRGBO(127, 205, 145, 1)),
            ),
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.lightbulb_outline, color: Color.fromRGBO(127, 205, 145, 1)),
            title: Text(
              'Tips',
              style: TextStyle(color: Color.fromRGBO(127, 205, 145, 1)),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart,
                color: Color.fromRGBO(127, 205, 145, 1)),
            title: Text(
              'Statistik',
              style: TextStyle(color: Color.fromRGBO(127, 205, 145, 1)),
            ),
          ),
        ],
      ),
      body: PageView(
        children: tabPages,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    );
  }

  void onPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
