// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomEditTextWidget extends StatelessWidget {
  final String icon;
  final String hintText;
  final bool obsecureText;
  const CustomEditTextWidget({
    Key? key,
    required this.icon,
    required this.hintText,
    required this.obsecureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10),
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xFFA4A4A4),
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Image.asset(
            icon,
            height: 1,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFECECEC),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      obscureText: obsecureText,
    );
  }
}
