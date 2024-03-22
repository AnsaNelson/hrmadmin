import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmadmin/app/modules/Login/views/login_view.dart';
import 'package:hrmadmin/app/modules/home/views/home_view.dart';
import 'package:hrmadmin/app/networks/dio/repo/models/req/register_req.dart';
import 'package:hrmadmin/app/networks/dio/repo/repo/authRepo.dart';
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

  onRegisterClick() async {
    final AuthRepo repo = AuthRepo();

    final response = await repo.register(RegisterReq(
      name: nameController.text,
      email: emailController.text,
      password: passwordController.text,
    ));

    if (response != null && response.token != null) {
      Get.to(LoginView());
    } else {
      print(response!.error);
    }
  }
}
