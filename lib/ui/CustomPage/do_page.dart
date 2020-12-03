import 'package:flutter/material.dart';

class DoPage extends StatefulWidget {
  @override
  _DoPageState createState() => _DoPageState();
}

class _DoPageState extends State<DoPage> {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) => _yapilacaklarListesi());// widget bekliyor. bu metod liste döndürüyor
  }

  _yapilacaklarListesi() {
    
    
  }
}
