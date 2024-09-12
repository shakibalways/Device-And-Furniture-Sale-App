
import 'package:flutter/material.dart';

class MyCustomListTile extends StatelessWidget {
  const MyCustomListTile({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.access_alarms_outlined),
      title: Text(text),
      trailing: const Icon(Icons.close),
    );
  }
}