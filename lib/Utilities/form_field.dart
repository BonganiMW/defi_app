// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  MyTextField(
      {required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Color.fromARGB(80, 158, 158, 158)),
      ),
      height: 50,
      width: 350,
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          cursorHeight: 15,
          cursorWidth: 1,
          cursorColor: Colors.black,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: Color.fromARGB(170, 117, 117, 117),
                fontSize: 14,
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
        ),
      ),
    );
  }
}
