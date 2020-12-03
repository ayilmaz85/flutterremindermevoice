import 'package:aesbilisimteknolojileri/Sabitler/Sabitler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class CustomTimePickerExtensions extends StatefulWidget {
  @override
  _CustomTimePickerExtensionsState createState() =>
      _CustomTimePickerExtensionsState();
}

class _CustomTimePickerExtensionsState
    extends State<CustomTimePickerExtensions> {
  DateTime _timeInfo;
  DateTime _timePick;
  String ayarlananSaat;
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
                  _timeInfo == null ? Sabitler.timePickStr : ayarlananSaat,
                  style: TextStyle(color: Colors.black, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }

  _selectTime() async {
    _timePick = await DatePicker.showTimePicker(context,
        showSecondsColumn: false,
        locale: LocaleType.tr,
        currentTime: DateTime.now(),
        showTitleActions: true,
        onConfirm: (date) {});
    if (_timePick != null && _timePick != _timeInfo) {
      setState(() {
        _timeInfo = _timePick;
        var formatter = DateFormat("HH:MM");
        ayarlananSaat = formatter.format(_timePick);
        print(_timePick.toString() + "nurada");
        print(ayarlananSaat);
      });
    }
  }
}
