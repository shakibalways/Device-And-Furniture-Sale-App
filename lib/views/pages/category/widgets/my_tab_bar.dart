import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        indicatorColor: Colors.deepPurpleAccent,
        unselectedLabelColor: Colors.grey.shade200,
        controller: tabController,
        tabs: [
          Tab(child: Text("View All")),
          Tab(child: Text("Portable")),
          Tab(child: Text("Multiroom")),
          Tab(child: Text("Architectural")),
        ]);
  }
}
