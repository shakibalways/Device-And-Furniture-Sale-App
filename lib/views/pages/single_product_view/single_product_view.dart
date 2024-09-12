import 'package:belives_store_app_app/components/my_custom_appbar.dart';
import 'package:belives_store_app_app/components/my_custom_button.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:belives_store_app_app/controller/getx/uiController/single_product_view/single_product_view.dart';
import 'package:belives_store_app_app/utilits/constant/text_list.dart';
import 'package:belives_store_app_app/views/pages/cart/cart.dart';
import 'package:belives_store_app_app/views/pages/searchResults/search_results.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleProductViewPage extends StatelessWidget {
  const SingleProductViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SingleProductViewController());
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffF3F6F8),
      appBar: MyCustomAppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(() => const SearchResultPage());
          },
          icon: const Icon(Icons.arrow_back),
        ),
        icon: Icons.shopping_bag,
        iSize: 30,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyCustomText(
                    title: "Speakers",
                    color: Colors.grey,
                    fSize: 15,
                  ),
                  SizedBox(height: 5),
                  MyCustomText(
                    title: "Beosound Balance",
                    fWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyCustomText(
                    title: "From",
                    color: Colors.grey,
                    fSize: 15,
                  ),
                  MyCustomText(
                    title: "\$1,600",
                    fSize: 15,
                    fWeight: FontWeight.bold,
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyCustomText(
                    title: "Available color",
                    color: Colors.grey,
                    fSize: 15,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      primary: false,
                      itemCount: controller.mycolors.length,
                      itemBuilder: (context, index) {
                        return Obx(
                          () => GestureDetector(
                              onTap: () {
                                controller.selectItem(index);
                              },
                              child: Container(
                                width: 40,
                                margin: const EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                    color:
                                        controller.selectedColorIndex.value ==
                                                index
                                            ? controller.mycolors[index]
                                            : Colors.grey,
                                    borderRadius: BorderRadius.circular(8)),
                              )),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            //Description
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * .48,
                  width: width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Column(
                          children: [
                            SizedBox(
                              height: 40,
                            ),
                            MyCustomText(
                              title: "Wireless, smart home speaker",
                              fWeight: FontWeight.bold,
                              fSize: 22,
                            ),
                            SizedBox(height: 20),
                            MyCustomText(
                              title: RTexts.subTitles,
                              mLines: 4,
                              fSize: 15,
                            )
                          ],
                        ),
                        MyCustomButton(
                          title: "ADD TO CART",
                          onTap: () {
                            Get.to(() => const CartPage());
                          },
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 180,
                  bottom: 250,
                  child: Image.asset(
                    "assets/home_image/Base.png",
                    height: 350,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
