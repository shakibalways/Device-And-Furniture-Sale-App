// import 'package:belives_store_app_app/components/my_custom_text.dart';
// import 'package:flutter/material.dart';
//
// class MySliverAppBar extends StatelessWidget {
//   const MySliverAppBar({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SliverAppBar(
//       expandedHeight: 340,
//       collapsedHeight: 120,
//       floating: false,
//       pinned: true, // app not hide for sliverAppBar
//       backgroundColor: Colors.deepPurple,
//       leading: Icon(Icons.filter_list),
//       title: MyCustomText(
//         title: "C A T E G O R I E S",
//         fWeight: FontWeight.w500,
//         fSize: 20,
//         color: Colors.white,
//       ),
//       centerTitle: true,
//       flexibleSpace: FlexibleSpaceBar(
//         background: Padding(
//           padding: EdgeInsets.only(bottom: 50),
//         ),
//         centerTitle: true,
//         titlePadding: EdgeInsets.only(
//           left: 0,
//           right: 0,
//           top: 0,
//         ),
//         expandedTitleScale: 1,
//       ),
//     );
//   }
// }
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 360,
      collapsedHeight: 120,
      floating: false,
      pinned: true, // app not hide for sliverAppBar
      backgroundColor: Colors.deepPurple,
      leading: const Icon(
        Icons.filter_list,
      ),
      title: const MyCustomText(
        title: "C A T E G O R I E S",
        fWeight: FontWeight.w500,
        fSize: 20,
        color: Colors.white,
      ),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(
          left: 0,
          right: 0,
          top: 0,
        ),
        expandedTitleScale: 1,
      ),
    );
  }
}
