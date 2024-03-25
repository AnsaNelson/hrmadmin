
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmadmin/app/modules/home/views/home_view.dart';
import 'package:hrmadmin/app/networks/dio/repo/models/req/login_req.dart';
import 'package:hrmadmin/app/networks/dio/repo/repo/authRepo.dart';


class LoginController extends GetxController {
  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxBool showPassword = false.obs; // Change RxBool to bool

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

  onClickLogin()async{ 
    final AuthRepo  repo = AuthRepo();
    final response = await repo.login(LoginReq(email: emailController.text,password: passwordController.text));
    if(response!.error == null && response.token != null){
      Get.offAll(HomeView());
    }else{
      Get.snackbar("Error", response.error!);
    }
  }

 

}
