import 'package:belives_store_app_app/components/my_custom_appbar.dart';
import 'package:belives_store_app_app/components/my_custom_button.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:belives_store_app_app/controller/getx/uiController/userProfile/edit_profile.dart';
import 'package:belives_store_app_app/views/pages/bottomNavBar/bottom_nav_bar.dart';
import 'package:belives_store_app_app/views/pages/my_account/widget/my_custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: const MyCustomAppBar(
        title: MyCustomText(
          title: "Edit Profile",
          fSize: 23,
          fWeight: FontWeight.w500,
        ),
        icon: Icons.settings,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Stack(
                children: [
                  Obx(() {
                    return Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        shape: BoxShape.circle,
                        image: controller.profileImage.value != null
                            ? DecorationImage(
                                image:
                                    FileImage(controller.profileImage.value!),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                      child: controller.profileImage.value == null
                          ? Icon(
                              Icons.person,
                              size: 60,
                              color: Colors.grey.shade600,
                            )
                          : null,
                    );
                  }),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        Get.dialog(AlertDialog(
                          content: SizedBox(
                            height: Get.height * 0.20,
                            width: Get.width,
                            child: Column(
                              children: [
                                const SizedBox(height: 20),
                                const MyCustomText(
                                  title: "Choose Profile Photo",
                                  fWeight: FontWeight.w700,
                                  fSize: 20,
                                ),
                                const SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        controller.pickedCameraImage(context);
                                        Get.back();
                                      },
                                      child: const SizedBox(
                                        height: 40,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.camera_alt_outlined,
                                              size: 30,
                                            ),
                                            MyCustomText(
                                              title: "Camera",
                                              fSize: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        controller.pickedGalleryImage(context);
                                        Get.back();
                                      },
                                      child: const SizedBox(
                                        height: 40,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.image,
                                              size: 30,
                                            ),
                                            MyCustomText(
                                              title: "Gallery",
                                              fSize: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ));
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: const BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                        child: const Center(
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Form(
                  child: Column(
                children: [
                  MyCustomFormField(
                    text: 'Full Name',
                    icon: Icons.person,
                    controller: controller.nameController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyCustomFormField(
                    text: "Email",
                    icon: Icons.email,
                    controller: controller.emailController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyCustomFormField(
                    text: 'Phone No',
                    icon: Icons.call,
                    controller: controller.phoneNOController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyCustomFormField(
                    text: 'Address',
                    icon: Icons.location_city,
                    controller: controller.addressController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyCustomFormField(
                    text: 'Password',
                    icon: Icons.key_outlined,
                    controller: controller.passwordController,
                  ),
                ],
              )),
              const SizedBox(
                height: 30,
              ),
              MyCustomButton(
                title: "Save Profile",
                onTap: () {
                  Get.to(() => const BottomNavBarPage());

                  Get.snackbar("Message", "Profile Save Success");

                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
