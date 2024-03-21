import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_toast/motion_toast.dart';

class RegisterController extends GetxController {
  final GlobalKey<FormState> formKeys = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
 void register(BuildContext context) {
    String name=nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
if(name.isEmpty){
MotionToast.warning(
        title: Text("Enter Name"),
        description: Text("Please enter name"),
      ).show(context);
}
    else if (email.isEmpty || !EmailValidator.validate(email)) {
      MotionToast.warning(
        title: Text("Enter Correct Email"),
        description: Text("Please enter a valid email address."),
      ).show(context);
    } else if (password.isEmpty || password.length < 6 || !password.contains(RegExp(r'[A-Z]'))) {
      MotionToast.warning(
        title: Text("Enter Correct password"),
        description: Text("Please enter at least more than 6 characters and also enter special characters."),
      ).show(context);
    } else {
      // Your login logic here
      Get.toNamed('/home');
    }
  }
}
