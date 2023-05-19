import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final bool? obscureText;

  const CustomTextFormField({
    required this.hintText,
    this.obscureText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 5.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black26,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextFormField(
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 18,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
