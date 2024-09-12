import 'package:belives_store_app_app/components/custom_loading_button.dart';
import 'package:belives_store_app_app/components/my_custom_button.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:belives_store_app_app/controller/getx/uiController/auth/signIn/sign_in.dart';
import 'package:belives_store_app_app/utilits/constant/color_list.dart';
import 'package:belives_store_app_app/utilits/constant/icon.dart';
import 'package:belives_store_app_app/utilits/constant/text_list.dart';
import 'package:belives_store_app_app/views/pages/auth/otp/otp_authentication.dart';
import 'package:belives_store_app_app/views/pages/auth/register_page/sign_up_page.dart';
import 'package:belives_store_app_app/views/pages/auth/sign_in_page/widgets/my_email_field.dart';
import 'package:belives_store_app_app/views/pages/auth/sign_in_page/widgets/my_password_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyCustomText(
                    title: RTexts.title,
                    fSize: 20,
                    fWeight: FontWeight.bold,
                  ),
                  MyCustomText(
                    title: RTexts.subTitle,
                    fSize: 15,
                    color: Colors.black87,
                  ),
                ],
              ),
              // Form List
              const SizedBox(
                height: 50,
              ),
              Form(
                key: controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MyEmailFormField(
                      validate: controller.emailValidate,
                      controller: controller.emailController,
                      prefixIcon: const Icon(Icons.person_outline),
                      hinText: "Enter Your Email",
                    ),
                    const SizedBox(height: 30),
                    Obx(
                      () => MyPasswordFormField(
                        hinText: "Password",
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
                        prefixIcon: Icon(Icons.key,
                            size: 25, color: Colors.black.withOpacity(0.2)),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.offAll(() => const OtpAuthenticationPage());
                        },
                        child: const MyCustomText(
                          title: "Forget Password?",
                          fSize: 16,
                          color: Colors.red,
                          fWeight: FontWeight.w500,
                        ))
                  ],
                ),
              ),
              // Button List
              const SizedBox(
                height: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                            onTap: () async {
                              await controller.getSubmit();
                            },
                            title: "SIGN IN",
                            icon: Icons.arrow_circle_right_sharp,
                          ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyCustomText(
                        title: "Don't have an account?",
                        fSize: 16,
                        color: Colors.grey[600],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage()));
                        },
                        child: const MyCustomText(
                          title: 'Sign Up',
                          fWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
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
    );
  }
}
