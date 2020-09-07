import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;

  CustomText({
    @required this.labelText,
    @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 400,
      padding: EdgeInsets.only(bottom: 5),
      child: TextFormField(
        controller: controller,
        decoration: new InputDecoration(
          labelText: labelText,
          border: new OutlineInputBorder(
            borderSide: new BorderSide(),
          ),
          //fillColor: Colors.green
        ),
      ),
    );
  }
}
