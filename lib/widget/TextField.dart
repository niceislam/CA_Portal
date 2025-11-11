import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    this.hinttext,
    this.controller,
    this.validator,
    this.sufIcon,
    this.obsecureText,
    this.eyetap,
    this.keyboardType,
    this.inputFormater,
  });

  final String? hinttext;
  final TextEditingController? controller;
  final FormFieldValidator? validator;
  final Icon? sufIcon;
  final bool? obsecureText;
  final VoidCallback? eyetap;
  final TextInputType? keyboardType;
  final TextInputFormatter? inputFormater;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      inputFormatters: [if (inputFormater != null) inputFormater!],
      obscureText: obsecureText ?? false,
      controller: controller,
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      cursorColor: Colors.black,
      cursorHeight: 20,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: eyetap,
          icon: sufIcon ?? Icon(Icons.add),
        ),
        errorStyle: TextStyle(color: Colors.white),
        hintText: hinttext,
        hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
      validator: validator,
    );
  }
}
