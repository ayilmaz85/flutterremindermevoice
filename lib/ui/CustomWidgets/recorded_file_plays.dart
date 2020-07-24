import 'package:flutter/material.dart';

import 'listen_play_icon_btn.dart';

class RecordedMediaFilesPlays extends StatefulWidget {
  /*bool hasRecord=false;
  String path="";
  RecordedMediaFilesPlays(this.hasRecord,this.path)*/

  @override
  _RecordedMediaFilesPlaysState createState() => _RecordedMediaFilesPlaysState();
}

class _RecordedMediaFilesPlaysState extends State<RecordedMediaFilesPlays> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListenPlayIconBtn(),

          ],
        )
      ],
    );
  }
}
