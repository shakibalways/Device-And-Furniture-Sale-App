import 'package:flutter/material.dart';

class CustomDropDownButtonFormField extends StatelessWidget {
  const CustomDropDownButtonFormField({
    super.key,
    this.lText,
    this.value,
    this.items,
    this.onChanged,
    this.icon,
    this.hText,
    this.height,
    this.iSize,
  });
  final String? lText;
  final String? hText;
  final String? value;
  final List<DropdownMenuItem<String>>? items;
  final void Function(String?)? onChanged;
  final Widget? icon;
  final double? height;
  final double? iSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButtonFormField<String>(
        icon: Icon(
          Icons.arrow_drop_down_circle_outlined,
          size: iSize,
        ),
        decoration: InputDecoration(
          labelText: lText,
          hintText: hText,
          border: const UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
        value: value,
        items: items,
        onChanged: onChanged,
      ),
    );
  }
}
