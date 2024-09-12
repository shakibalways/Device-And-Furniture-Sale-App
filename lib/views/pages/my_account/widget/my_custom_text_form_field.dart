import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';

class MyCustomFormField extends StatelessWidget {
  const MyCustomFormField({
    super.key,
    required this.text,
    required this.icon, required this.controller,
  });
  final String text;
  final IconData icon;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:controller ,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade300,
          label: MyCustomText(
            title: text,
          ),
          prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none
        )
         ),
    );
  }
}
