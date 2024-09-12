import 'package:flutter/material.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyCustomAppBar({
    super.key,
    this.automaticallyImplyLeading,
    this.bColor,
    this.leading,
    this.title,
    this.icon, this.iSize,
  });
  final Widget? leading;
  final Widget? title;
  final bool? automaticallyImplyLeading;
  final Color? bColor;
  final IconData? icon;
  final double ? iSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      toolbarHeight: 80,
      backgroundColor: bColor,
      automaticallyImplyLeading: automaticallyImplyLeading ?? false,
      title: title,
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(icon,size: iSize,),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
