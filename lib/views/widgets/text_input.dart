import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final String inputText;
  final bool isObscure;
  final IconData icons;
  final Color bgColor;
  const TextInput(
      {super.key,
      required this.controller,
      required this.inputText,
      this.isObscure = false,
      this.bgColor = Colors.white,
      required this.icons});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isObscure,
      decoration: InputDecoration(
          labelText: inputText,
          fillColor: bgColor,
          filled: true,
          prefixIcon: Icon(icons),
          labelStyle: const TextStyle(
            fontSize: 20,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
            borderSide: const BorderSide(
              color: Colors.black,
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: const BorderSide(
                color: Colors.black,
              ))),
    );
  }
}
