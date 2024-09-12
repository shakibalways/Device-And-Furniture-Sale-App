import 'package:belives_store_app_app/views/pages/auth/sign_in_page/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // email and password input fields text controller
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // loading state and password visibility
  RxBool isLoading = false.obs;
  RxBool isVisibility = true.obs;

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    }
    return null;
  }

  // Validate email format
  String? emailValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    if (!GetUtils.isEmail(value)) {
      return 'Enter a valid email';
    }
    return null; // Return null if valid
  }

  // Validate password length
  String? passwordValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null; // Return null if valid
  }

  Future<void> getSubmit() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      await Future.delayed(const Duration(seconds: 1));
      Get.offAll(const SignInPage());
      Get.snackbar('Success', 'Register Success');
      isLoading.value = false;
    }
  }

  void toggleVisibility() {
    isVisibility.value = !isVisibility.value;
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
