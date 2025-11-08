import 'package:flutter/material.dart';
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
  });

  final String? hinttext;
  final TextEditingController? controller;
  final FormFieldValidator? validator;
  final Icon? sufIcon;
  final bool? obsecureText;
  final VoidCallback? eyetap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        hintStyle: TextStyle(color: Colors.grey),
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
