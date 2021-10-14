import 'package:flutter/material.dart';
import 'ProfileView.dart';

class ProfileController extends StatefulWidget {
  ProfileController({Key key, this.title}) : super(key: key);

  final String title;

  @override
  ProfileView createState() => ProfileView();
}
