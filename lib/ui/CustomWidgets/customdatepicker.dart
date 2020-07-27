import 'package:aesbilisimteknolojileri/Sabitler/Sabitler.dart';
import 'package:aesbilisimteknolojileri/core/Model/MVVM/reminding_vm.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDatePicker extends StatefulWidget {
  @override
  _MyDatePickerState createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  //GlobalKey key = GlobalKey();
  DateTime _pickedDate;
  DateTime _dateInfo;
  String myDatePick;

  RemindingViewModel remindingViewModel = RemindingViewModel();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // key: key,
      onTap: () => _selectDate(),
      child: Container(
        child: Row(
          children: <Widget>[
            Icon(
              Icons.date_range,
              color: Colors.black,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _dateInfo == null ? Sabitler.datePickStr : '$myDatePick',
                  //_pickedDate == null ? Sabitler.datePickStr : _myDatePick,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _selectDate() async {
    _pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1985),
        lastDate: DateTime(2071));
    if (_pickedDate != null && _pickedDate != _dateInfo) {
      setState(() {
        _dateInfo = _pickedDate;
        print(_pickedDate);
        var format = DateFormat('dd/MM/yyyy');

        myDatePick = format.format(_pickedDate);
      });
    }
  }
}
