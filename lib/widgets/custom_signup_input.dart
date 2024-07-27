import 'package:flutter/material.dart';

class CustomSignupInput extends StatefulWidget {
  String? label;
  bool? scure ;
  String? hint;
  IconData? icon;
  CustomSignupInput({super.key, required this.label, required this.scure, this.hint ,this.icon});

  @override
  State<CustomSignupInput> createState() => _CustomSignupInputState();
}

class _CustomSignupInputState extends State<CustomSignupInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: widget.scure!,
        decoration: InputDecoration(
            hintText: widget.hint,
            border: UnderlineInputBorder(),
            labelText: widget.label,
            labelStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            floatingLabelStyle: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
            suffixIcon: Icon(
              widget.icon,
              size: 20,
            )));
  }
}

