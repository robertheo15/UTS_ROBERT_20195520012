import 'package:flutter/material.dart';
import 'ContactView.dart';

class ContactController extends StatefulWidget {
  ContactController({Key key, this.title}) : super(key: key);

  final String title;

  @override
  ContactView createState() => ContactView();
}
