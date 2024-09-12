import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';

class MyCustomFormField extends StatelessWidget {
  const MyCustomFormField({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
