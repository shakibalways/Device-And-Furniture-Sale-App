// import 'package:flutter/material.dart';
//
// class MyEmailField extends StatelessWidget {
//   final TextEditingController controller;
//   final String? hText;
//   final String? lText;
//   const MyEmailField(
//       {super.key, required this.controller, this.lText, this.hText});
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: controller,
//       decoration: InputDecoration(
//           hintText: hText ?? 'E-mail',
//           prefixIcon: const Icon(Icons.person_outlined),
//           labelText: lText ?? 'UserName or Email'),
//       validator: (value) {
//         if (value == null || value == '') {
//           return "email_error";
//         } else if (!(value.contains("@") && value.contains("."))) {
//           return "wrong_email_error";
//         }
//         return null;
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class MyEmailField extends StatelessWidget {
//   final String hintName;
//   final TextEditingController controller;
//   final Widget? sIcon;
//   final IconData? fIcon;
//   final Color? color;
//   const MyEmailField({
//     super.key,
//     required this.hintName,
//     required this.controller,
//     this.sIcon,
//     this.fIcon,
//     this.color,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: controller,
//       decoration: InputDecoration(
//         hintText: hintName,
//         suffixIcon: sIcon ?? const Icon(Icons.search),
//         prefixIcon: Icon(
//           fIcon,
//           color: color,
//         ),
//         filled: true,
//         hoverColor: const Color(0xfff2f2f2),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: BorderSide.none,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
class MyEmailFormField extends StatelessWidget {
  const MyEmailFormField({
    super.key,
    required this.controller,
    this.hinText,
    this.prefixIcon,
    this.validate,
  });

  final TextEditingController controller;
  final String? hinText;
  final Icon? prefixIcon;
  final String? Function(String?)? validate;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validate,
      controller: controller,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
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
