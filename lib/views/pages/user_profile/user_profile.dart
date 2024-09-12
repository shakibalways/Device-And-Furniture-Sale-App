import 'package:belives_store_app_app/components/my_custom_button.dart';
import 'package:belives_store_app_app/components/my_custom_divider.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:belives_store_app_app/controller/getx/uiController/userProfile/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userProfileController = Get.put(UserProfileController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              ClipPath(
                clipBehavior: Clip.hardEdge,
                child: Container(
                  height: Get.height * 0.63,
                  width: Get.width,
                  decoration: const BoxDecoration(
                      color: Color(0xffC6AB59),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                ),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MyCustomButton(
                        height: Get.height * 0.12,
                        width: Get.width * 0.25,
                        color: Colors.black,
                        bRadius: BorderRadius.circular(30),
                        child: Center(
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: Image.asset(
                              "assets/home_image/icons.png",
                              height: 65,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Obx(() => MyCustomText(
                            title: userProfileController.userName.value,
                            fSize: 23,
                            fWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 10),
                      Obx(() => MyCustomText(
                            title: userProfileController.userEmail.value,
                            fWeight: FontWeight.w500,
                          )),
                      const SizedBox(height: 20),
                      Container(
                        width: Get.width * 0.8,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Obx(() => Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          MyCustomText(
                                            title:
                                                "Order #${userProfileController.orderNumber.value}",
                                            fWeight: FontWeight.bold,
                                            fSize: 15,
                                          ),
                                          MyCustomText(
                                            title:
                                                "• ${userProfileController.orderStatus.value}",
                                            color: const Color(0xff9923FF),
                                            fSize: 15,
                                          ),
                                        ],
                                      )),
                                  const MyCustomDivider(),
                                  SizedBox(
                                    height: 110,
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: userProfileController
                                            .products.length,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: GestureDetector(
                                              onTap: () => userProfileController
                                                  .navigateToProduct(index),
                                              child: Container(
                                                width: 100,
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xffF3F6F8),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Image.asset(
                                                    userProfileController
                                                        .products[index]
                                                        .imagePath),
                                              ),
                                            ),
                                          );
                                        }),
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      MyCustomText(
                                          title: "Beosound 1", fSize: 15),
                                      MyCustomText(
                                          title: "Beosound…", fSize: 15),
                                      MyCustomText(
                                          title: "Beoplay H…", fSize: 15),
                                    ],
                                  ),
                                  const MyCustomDivider(),
                                ],
                              ),
                              Column(
                                children: [
                                  const MyCustomText(
                                    title: "Your order is on its way!",
                                    fWeight: FontWeight.bold,
                                  ),
                                  const SizedBox(height: 5),
                                  const MyCustomText(
                                    title: "Orders will arrive in 3 days!",
                                    fWeight: FontWeight.w300,
                                    fSize: 13,
                                  ),
                                  const SizedBox(height: 10),
                                  GestureDetector(
                                    onTap: userProfileController
                                        .showTrackBottomSheet,
                                    child: Container(
                                      height: Get.height * .05,
                                      width: Get.width * .46,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffC6AB59),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(
                                        child: Text(
                                          "Track",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              GestureDetector(
                                onTap:
                                    userProfileController.navigateToAccountPage,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Row(
                                        children: [
                                          Icon(Icons.person_outline, size: 35),
                                          SizedBox(width: 10),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "My Account",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 18),
                                              ),
                                              Text("Edit your information")
                                            ],
                                          ),
                                        ],
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.arrow_right_alt,
                                            size: 35),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
