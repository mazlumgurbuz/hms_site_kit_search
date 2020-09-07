import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
      child: RaisedButton(
        color: Colors.grey,
        textColor: Colors.white,
        padding: EdgeInsets.all(12.0),
        splashColor: Colors.blueAccent,
        child: Text(text, style: TextStyle(fontSize: 16.0)),
        onPressed: onPressed,
      ),
    );
  }
}
