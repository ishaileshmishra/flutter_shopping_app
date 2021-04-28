import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final Icon fieldIcon;
  final String hintText;

  CustomInputField(this.fieldIcon, this.hintText);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textCapitalization: TextCapitalization.words,
      //onChanged: onChanged,
      style: TextStyle(color: Colors.deepPurple),
      cursorColor: Colors.deepPurple,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        fillColor: Colors.grey.shade100,
        filled: true,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.deepPurple),
        prefixIcon: fieldIcon,
      ),
    );
  }
}
