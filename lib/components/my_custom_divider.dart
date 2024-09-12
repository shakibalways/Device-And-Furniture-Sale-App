import 'package:flutter/material.dart';

class MyCustomDivider extends StatelessWidget {

  final double? indent;
  final double? endIndent;


  const MyCustomDivider(
      {super.key,

      this.indent,
      this.endIndent,

     });

  @override
  Widget build(BuildContext context) {
    return Divider(

      indent: indent,
      endIndent: endIndent,
      color: Colors.grey[300],
      thickness: 1,
    );
  }
}
