import 'package:belives_store_app_app/utilits/constant/color_list.dart';
import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton(
      {super.key,
      this.height = 50,
      this.width,
      this.color,
      this.child,
      this.margin,
      this.bRadius,
      this.title,
      this.icon,
      this.onTap,
      this.fWeight,
      this.fSize,
      this.lIcon});

  final double? height;
  final double? width;
  final Color? color;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? bRadius;
  final String? title;
  final IconData? icon;
  final void Function()? onTap;
  final FontWeight? fWeight;
  final double? fSize;
  final IconData? lIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        height: height,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          color: color ?? RColors.buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: child ??
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  lIcon,
                  color: Colors.white,
                  size: 30,
                ),
                Text(
                  title ?? "",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: fWeight,
                      fontSize: fSize),
                ),
                Icon(
                  icon,
                  color: Colors.white,
                  size: 35,
                ),
              ],
            ),
      ),
    );
  }
}
