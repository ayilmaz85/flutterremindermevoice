import 'package:aesbilisimteknolojileri/ui/CustomPage/do_page.dart';
import 'package:aesbilisimteknolojileri/ui/CustomPage/done_page.dart';
import 'package:aesbilisimteknolojileri/ui/CustomWidgets/add_voicealert_iconbutton.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _mySelectedIndex = 0;
  final List<Widget> pages = [
    DoPage(),
    DonePage(),
  ];

  List<BottomNavigationBarItem> bnavigationbaritems = [
    BottomNavigationBarItem(
        icon: Icon(Icons.warning, color: Colors.black),
        title: Text("Do!"),
        activeIcon: Icon(
          Icons.warning,
          color: Colors.orange,
        )),
    BottomNavigationBarItem(
        icon: Icon(Icons.done_all, color: Colors.black),
        title: Text("Done :)"),
        activeIcon: Icon(
          Icons.done_all,
          color: Colors.orange,
        )),
  ];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[AddVoiceAlertIconButton()],
      ),
      body: pages[_mySelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: Colors.red),
        items: bnavigationbaritems,
        currentIndex: _mySelectedIndex,
        onTap: (index) {
          setState(() {
            _mySelectedIndex = index;
          });
        },
      ),
    );
  }
}

// }
