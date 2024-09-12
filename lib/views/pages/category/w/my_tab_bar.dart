import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
          controller: tabController,
          tabs: [
        Tab(
          icon: Icon(Icons.home),
        ),
        Tab(
          icon: Icon(Icons.category),
        ),
        Tab(
          icon: Icon(Icons.location_on),
        ),
        Tab(
          icon: Icon(Icons.settings),
        ),
      ]),
    );
  }
}
