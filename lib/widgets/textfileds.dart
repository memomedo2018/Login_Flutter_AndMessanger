import 'package:flutter/material.dart';

class TextFileds extends StatefulWidget {
  final String types;
  final TextEditingController controller;
  TextFileds(this.types, this.controller);

  @override
  _TextFiledsState createState() => _TextFiledsState();
}

class _TextFiledsState extends State<TextFileds> {
  bool secured = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.types == 'password'
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
      obscureText: widget.types == 'password' ? true : false,
      decoration: InputDecoration(
          labelText: widget.types,
          prefixIcon:
              widget.types == 'password' ? Icon(Icons.lock) : Icon(Icons.email),
          suffixIcon:
              widget.types == 'password' ? Icon(Icons.remove_red_eye) : null,
          border: OutlineInputBorder()),
    );
  }
}
