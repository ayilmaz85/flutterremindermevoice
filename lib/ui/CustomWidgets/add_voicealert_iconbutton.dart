import 'package:flutter/material.dart';

import '../../Sabitler/Sabitler.dart';
import 'custom_time_picker.dart';
import 'customdatepicker.dart';
import 'recorded_file_plays.dart';
import 'voicerecordbutton.dart';

class AddVoiceAlertIconButton extends StatefulWidget {
  // final String title;
  // final String path;

  @override
  _AddVoiceAlertIconButtonState createState() =>
      _AddVoiceAlertIconButtonState();
}

class _AddVoiceAlertIconButtonState extends State<AddVoiceAlertIconButton> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return IconButton(
        icon: Icon(
          Icons.add_alert,
          color: Colors.white,
        ),
        iconSize: size.width / 12,
        onPressed: () {
          _buildShowAlertShowDialog(context, size);
        });
  }

  Future _buildShowAlertShowDialog(BuildContext context, Size size) {
    return showDialog(
      context: context,
      child: SingleChildScrollView(
        child: AlertDialog(
          title: Text(
            Sabitler.addReminding,
            textAlign: TextAlign.center,
          ),
          content: Column(
            //direction: Axis.vertical,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _TitleTextFieldWidget(),
              ),

              //Ses kayıt butonu
              CustomIconButton(
                size: size.width / 16,
                //isVisible: isVisible = !isVisible,
              ),
              SizedBox(
                height: size.height / 24,
              ),

              //ses kaydedildikten sonra visible olması
              //ve ses kaydını dinlemeyi sağlar
              Visibility(
                visible: _isVisible,
                child: Row(
                  children: <Widget>[RecordedMediaFilesPlays()],
                ),
              ),

              //Tarih seçimi
              MyDatePicker(),

              //saat seçimi
              //MyTimePicker(),
              CustomTimePickerExtensions(),

              //Kaydet ve iptal et butonları
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => {},
                    child: Text(
                      Sabitler.closeButtonText,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  FlatButton(
                    onPressed: () => {_saveReminded()},
                    child: Text(
                      Sabitler.finishedButtonText,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _saveReminded() {}
}

class _TitleTextFieldWidget extends StatelessWidget {
  const _TitleTextFieldWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(),
    );
  }
}
