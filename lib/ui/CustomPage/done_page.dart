import 'package:aesbilisimteknolojileri/Sabitler/Sabitler.dart';
import 'package:flutter/material.dart';

class DonePage extends StatefulWidget {
  @override
  _DonePageState createState() => _DonePageState();
}

class _DonePageState extends State<DonePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(Sabitler.pageDoneText)),
    );
  }
}
