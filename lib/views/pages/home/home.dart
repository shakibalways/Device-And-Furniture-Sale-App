import 'package:belives_store_app_app/components/my_custom_appbar.dart';
import 'package:belives_store_app_app/components/my_custom_divider.dart';
import 'package:belives_store_app_app/controller/getx/uiController/home/home.dart';
import 'package:belives_store_app_app/data%20model/productof_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:belives_store_app_app/components/my_custom_card.dart';
import 'package:belives_store_app_app/utilits/constant/text_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    // Inject the controller
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
      appBar:const MyCustomAppBar(icon: Icons.menu_open_sharp,iSize: 32,),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              RTexts.title1,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                      height: height * 0.28,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const PageScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: productList.length,
                        itemBuilder: (context, index) {
                          var product = productList[index];
                          return CustomCard(
                            image: product.imagePath,
                            text: product.text,
                            texts: product.texts,
                          );
                        },
                      )),
                  const SizedBox(height: 10),
                  const MyCustomDivider(),
                  const SizedBox(height: 15),
                  const MyCustomText(
                    title: "Recommended for You",
                    fWeight: FontWeight.w600,
                    fSize: 18,
                  ),
                  const SizedBox(height: 50),
                  Obx(() {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children:
                            List.generate(controller.products.length, (index) {
                          var product = controller.products[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(
                              height: 240,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    product.imagePath,
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.fitHeight,
                                  ),
                                  MyCustomText(
                                    title: product.text,
                                    fSize: 20,
                                    fWeight: FontWeight.w700,
                                  ),
                                  MyCustomText(title: product.amount),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
