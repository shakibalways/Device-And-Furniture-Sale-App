import 'package:flutter/material.dart';

class MyCustomSearchField extends StatelessWidget {
  final String hintName;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;
  final InputBorder? border;

  const MyCustomSearchField({
    super.key,
    required this.hintName,
    required this.controller,
    this.onChanged,
    this.suffixIcon,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        hintText: hintName,
        suffixIcon: const Icon(Icons.search),
        filled: true,
        border: border ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
      ),
    );
  }
}
