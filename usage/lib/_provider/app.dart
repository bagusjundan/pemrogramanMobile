import 'package:flutter/material.dart';
import 'package:usage/item.dart';
import 'package:provider/provider.dart';
import 'package:usage/view/profileView.dart';
import 'package:usage/view/startView.dart';
import '_state.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Page(),
      ),
    );
  }
}

class Page extends StatelessWidget {
  Page({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tinggalkan Jejak',
          style: GoogleFonts.fredokaOne(
                  textStyle: TextStyle(
            color: Colors.grey[200]),
          )
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
              Icons.logout,
              color: Colors.grey[200],
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Start()));
            },
          )
        ],
      ),
      body: ListViewWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final state = Provider.of<AppState>(context, listen: false);
          state.addItem(Item(title: DateTime.now().toString()));
        },
        tooltip: 'Add',
        child: Icon(Icons.add),
        backgroundColor: Color.fromRGBO(127, 205, 145, 1),
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, state, child) {
        return ListView.builder(
          padding: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 8.0),
          itemCount: state.items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(state.items[index].title),
            );
          },
        );
      },
    );
  }
}
