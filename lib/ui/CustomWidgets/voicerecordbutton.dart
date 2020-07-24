import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  Size size;

  CustomIconButton({size = 24});

  @override
  _CustomIconButtonState createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  bool tiklandiMi = false;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return IconButton(
        onPressed: () {
          setState(() {
            tiklandiMi = !tiklandiMi;
          });
        },
        icon: tiklandiMi == true
            ? Icon(
                Icons.record_voice_over,
                size: width / 8,
                color: Colors.red,
              )
            : Icon(Icons.play_arrow, size: width / 8));
  }
}
