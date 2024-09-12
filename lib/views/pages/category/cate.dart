import 'package:belives_store_app_app/views/pages/category/w/my_sliver_app_bar.dart';
import 'package:belives_store_app_app/views/pages/category/w/my_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesPages extends StatefulWidget {
  const CategoriesPages({super.key});

  @override
  State<CategoriesPages> createState() => _CategoriesPagesState();
}

class _CategoriesPagesState extends State<CategoriesPages>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            MySliverAppBar(
              title: MyTabBar(
                tabController: tabController,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(clipBehavior: Clip.none, children: [
                    Container(
                      height: Get.height * 0.28,
                      width: Get.width * 0.9,
                      decoration: BoxDecoration(
                          color: const Color(0xfff2f2f2),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(80),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(5, 9),
                              blurRadius: 5,
                              spreadRadius: 2,
                              color: Colors.grey.withOpacity(0.2),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "Beosound Balance",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Innovative, wireless home speaker",
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (int i = 0; i < 3; i++)
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  height: 5,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 100,
                        left: 50,
                        child: Image.asset(
                          "assets/home_image/speakers.png",
                          height: 180,
                          fit: BoxFit.fitHeight,
                        )),
                  ]),
                ],
              ),
            )
          ],
          body: Container(
            color: Colors.pink,
          ),
        ));
  }
}
