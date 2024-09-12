import 'package:flutter/material.dart';

class MyCustomContainer extends StatelessWidget {
  final String ? image;
  final String? itemName;
  final String ? itemPrice;

  const MyCustomContainer(
      {super.key,
      required this.image,
      required this.itemName,
      required this.itemPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
          color: const Color(0xfff2f2f2),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: const Offset(5, 9),
              blurRadius: 5,
              spreadRadius: 2,
              color: Colors.grey.withOpacity(0.2),
            )
          ]),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            image ?? '',
            height: 130,
            fit: BoxFit.fitHeight,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            itemName ?? "",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Text(
            itemPrice ?? "",
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
