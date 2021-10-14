import 'package:aplikasi_menu_makanan/menu/MenuView.dart';
import 'package:flutter/material.dart';
import './home/HomeView.dart';
import './contact/ContactController.dart';
import './profile/ProfileController.dart';

class HomeApps extends StatefulWidget {
  @override
  _HomeAppsState createState() => _HomeAppsState();
}

class _HomeAppsState extends State<HomeApps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS',
      routes: {
        '/': (BuildContext _) => HomeView(),
        '/profile': (BuildContext _) => ProfileController(),
        '/contact': (BuildContext _) => ContactController(),
        '/menu': (BuildContext _) => MenuView(),
      },
      initialRoute: '/',
    );
  }
}
