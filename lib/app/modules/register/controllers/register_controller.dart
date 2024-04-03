

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmadmin/app/modules/Login/views/login_view.dart';
import 'package:hrmadmin/app/networks/dio/repo/models/req/register_req.dart';
import 'package:hrmadmin/app/networks/dio/repo/repo/authRepo.dart';


class RegisterController extends GetxController {
 
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
  String? get errorText {
  
  final text = nameController.value.text;
 
  if (text.isEmpty) {
    return 'Can\'t be empty';
  }
  if (text.length < 4) {
    return 'Too short';
  }
  return null;
}
String? get errorText1 {
  
  final emailtext = nameController.value.text;
 
  if (emailtext.isEmpty) {
    return 'Can\'t be empty';
  }
  return null;
}
String? get errorText2{
  
  final passwordtext = passwordController.value.text;
 
  if (passwordtext.isEmpty) {
    return 'Can\'t be empty';
  }
  if(passwordtext.length <= 6){
    return 'password atleast more than 6 character';
  }
  return null;
}

}
