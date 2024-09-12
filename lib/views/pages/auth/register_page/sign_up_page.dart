import 'package:belives_store_app_app/components/custom_loading_button.dart';
import 'package:belives_store_app_app/components/my_custom_button.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:belives_store_app_app/controller/getx/uiController/auth/sign_up/sign_up.dart';
import 'package:belives_store_app_app/utilits/constant/color_list.dart';
import 'package:belives_store_app_app/utilits/constant/icon.dart';
import 'package:belives_store_app_app/utilits/constant/text_list.dart';
import 'package:belives_store_app_app/views/pages/auth/register_page/widgets/my_user_name_field.dart';
import 'package:belives_store_app_app/views/pages/auth/sign_in_page/widgets/my_email_field.dart';
import 'package:belives_store_app_app/views/pages/auth/sign_in_page/widgets/my_password_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyCustomText(
                      title: RTexts.getting,
                      fSize: 25,
                      fWeight: FontWeight.bold,
                    ),
                    MyCustomText(
                      title: RTexts.sub,
                      fSize: 15,
                      color: Colors.black87,
                    )
                  ],
                ),
                // Form List
                const SizedBox(
                  height: 30,
                ),

                Form(
                  key: controller.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyUserNameFormField(
                        hinText: "UserName",
                        validate: controller.validateName,
                        prefixIcon: const Icon(Icons.person_outline),
                        suffixWidget: const Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        controller: controller.nameController,
                      ),
                      const SizedBox(height: 30),
                      MyEmailFormField(
                          hinText: "Enter your email",
                          validate: controller.emailValidate,
                          prefixIcon: const Icon(Icons.email_outlined),
                          controller: controller.emailController),
                      const SizedBox(height: 30),
                      Obx(
                        () => MyPasswordFormField(
                          validate: controller.passwordValidate,
                          obscureText: controller.isVisibility.value,
                          textInputType: TextInputType.number,
                          suffixWidget: GestureDetector(
                              onTap: () {
                                controller.toggleVisibility();
                              },
                              child: controller.isVisibility.value
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off)),
                          controller: controller.passwordController,
                          hinText: "Password",
                          prefixIcon: Icon(Icons.key,
                              size: 25, color: Colors.black.withOpacity(0.2)),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50),
                // Button List
                Column(
                  children: [
                    Obx(
                      () => controller.isLoading.value
                          ? CustomLoadingButton(
                              color: RColors.buttonColor,
                              child: Image.asset(
                                RIcons.loading,
                                height: 40,
                                width: 40,
                              ),
                            )
                          : MyCustomButton(
                              onTap: () {
                                controller.getSubmit();
                              },
                              title: "SIGN UP",
                              icon: Icons.arrow_circle_right_sharp,
                            ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: const MyCustomText(
                              title: "Sign In",
                              fWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                    const SizedBox(height: 60),
                    MyCustomButton(
                      color: RColors.buttonColor1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/images/fblogo.png'),
                          const MyCustomText(
                            title: "Connect with facebook",
                            fSize: 15,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
