import 'package:flutter/material.dart';

class ListenPlayIconBtn extends StatefulWidget {
  final Icon icon;

  const ListenPlayIconBtn({Key key, this.icon}) : super(key: key);
  @override
  _ListenPlayIconBtnState createState() => _ListenPlayIconBtnState();
}

class _ListenPlayIconBtnState extends State<ListenPlayIconBtn> {
  bool kayitVarmi=false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: kayitVarmi == false ? Icon(Icons.play_circle_outline,  color: Colors.black,) : Icon(Icons.stop, color: Colors.red,),
    onPressed: (){
      setState(() {
        kayitVarmi = !kayitVarmi;

        //TODO
        // pathi alıp ilgili pathdeki ses kaydını çaldırma işlemleri yapılacak
      });

    });
  }
}
