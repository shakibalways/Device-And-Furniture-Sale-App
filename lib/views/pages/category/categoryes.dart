import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:belives_store_app_app/controller/getx/category/category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/my_custom_bottom_sheet.dart';

class CatagoriesPage extends StatelessWidget {
  const CatagoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the controller
    final CatagoriesController controller = Get.put(CatagoriesController());

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          centerTitle: true,
          title: const MyCustomText(
            title: "SPEAKERS",
            fSize: 17,
          ),
          actions: [
            // Filter Product Options
            MyCustomBottomSheet(
              height: height,
              width: width,
              controller: controller,
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                height: 280,
                width: 365,
                decoration: BoxDecoration(
                    color: const Color(0xfff2f2f2),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(150),
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Beosound Balance",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text(
                        "Innovative, wireless home speaker",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                      const SizedBox(
                        height: 20,
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
                            )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 130,
                  left: 5,
                  child: Image.asset(
                    "assets/home_image/speakers.png",
                    height: 300,
                    fit: BoxFit.fitHeight,
                  )),
            ]),
            const SizedBox(
              height: 20,
            ),
            const TabBar(
                isScrollable: true,
                indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text('View all'),
                  ),
                  Tab(
                    child: Text('Portable'),
                  ),
                  Tab(
                    child: Text('Multiroom'),
                  ),
                  Tab(
                    child: Text('Architectural'),
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
