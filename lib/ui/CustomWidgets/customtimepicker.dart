import 'package:aesbilisimteknolojileri/Sabitler/Sabitler.dart';
import 'package:flutter/material.dart';

class MyTimePicker extends StatefulWidget {
  @override
  _MyTimePicker createState() => _MyTimePicker();
}

class _MyTimePicker extends State<MyTimePicker> {
  TimeOfDay _timeInfo = null;
  TimeOfDay _timePick = null;
  String _ayarlananSaat = null;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectTime(),
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Icon(
              Icons.access_alarms,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  _timeInfo == null ? Sabitler.timePickStr : '$_ayarlananSaat',
                  style: TextStyle(color: Colors.black, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }

  _selectTime() async {
    _timePick = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (_timePick != null && _timePick != _timeInfo) {
      setState(() {
        _timeInfo = _timePick;
        //var formatter = TimeOfDayFormat.HH_colon_mm;
       //_ayarlananSaat =_timePick.format('HH:MM') ;
        print(_ayarlananSaat);
      });
    }

    print(_timePick.toString());

    return _ayarlananSaat;
  }
}
