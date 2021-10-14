import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './HomeController.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends HomeController {
  get onTap => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Makanan'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment(0.0, 0.0),
            child: Text(
              'Selamat datand di restoran ABC\nSilakan Tap Menu untuk melihat menu yang tersedia\nSilakan Tap profile untuk melihat profile creator',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            child: ListTile(
              onTap: () => Navigator.of(context).pushNamed('/menu'),
              title: Text('Menu'),
              leading: CircleAvatar(
                child: Icon(Icons.menu_book_rounded),
              ),
            ),
          ),
          Container(
            child: ListTile(
              onTap: () => Navigator.of(context).pushNamed('/contact'),
              title: Text('Contact'),
              leading: CircleAvatar(
                child: Icon(Icons.assignment_ind),
              ),
            ),
          ),
          Container(
            child: ListTile(
              onTap: () => Navigator.of(context).pushNamed('/profile'),
              title: Text('Profile'),
              leading: CircleAvatar(
                child: Icon(Icons.assignment_ind),
              ),
            ),
          ),
          Container(
            child: ListTile(
              onTap: () =>
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
              title: Text('Exit'),
              leading: CircleAvatar(
                child: Icon(Icons.exit_to_app),
              ),
            ),
          )
        ],
      )),
    );
  }
}
