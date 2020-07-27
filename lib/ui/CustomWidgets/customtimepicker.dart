import 'package:aesbilisimteknolojileri/Sabitler/Sabitler.dart';
import 'package:flutter/material.dart';

class MyTimePicker extends StatefulWidget {
  @override
  _MyTimePicker createState() => _MyTimePicker();
}

class _MyTimePicker extends State<MyTimePicker> {
  TimeOfDay _timeInfo = null;
  TimeOfDay _timePick = null;
  String ayarlananSaat = null;
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
                  _timeInfo == null ? Sabitler.timePickStr : '$ayarlananSaat',
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
      MaterialLocalizations localizations = MaterialLocalizations.of(context);
      ayarlananSaat =
          localizations.formatTimeOfDay(_timePick, alwaysUse24HourFormat: true);
      setState(() {
        _timeInfo = _timePick;
      });
    }

    print(_timePick.toString());

    return ayarlananSaat;
  }
}
