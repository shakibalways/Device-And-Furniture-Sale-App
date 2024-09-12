import 'package:flutter/material.dart';

class MyUserNameFormField extends StatelessWidget {
  const MyUserNameFormField({
    super.key,
    required this.controller,
    this.hinText,
    this.prefixIcon,
    this.suffixWidget,
    this.validate,
  });
  final TextEditingController controller;
  final String? hinText;
  final Icon? prefixIcon;
  final Widget? suffixWidget;

  final String? Function(String?)? validate;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validate,
      controller: controller,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
        suffixIcon: suffixWidget,
        prefixIcon: prefixIcon,
        hintText: hinText ?? "",
        filled: true,
        fillColor: Colors.grey.shade300,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
