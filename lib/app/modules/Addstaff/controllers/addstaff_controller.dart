import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmadmin/app/modules/home/views/home_view.dart';
import 'package:hrmadmin/app/networks/dio/repo/models/req/addstaff_req.dart';
import 'package:hrmadmin/app/networks/dio/repo/repo/staff.dart';
import 'package:image_picker/image_picker.dart';


class AddstaffController extends GetxController {
 final TextEditingController emailController=TextEditingController();
  final TextEditingController nameController=TextEditingController();
  final TextEditingController addressController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final TextEditingController jobController=TextEditingController();
  final TextEditingController dobController=TextEditingController();
  final TextEditingController phoneNumberController=TextEditingController();
  final TextEditingController jodController=TextEditingController();
  final TextEditingController salaryController=TextEditingController();
  final ImagePicker _picker = ImagePicker();
  File? imageFile;

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

  onClickAddStaff()async{ 
    final Staff repo = Staff();
    final response = await repo.addStaff(AddStaffReq(
      email: emailController.text,
      name: nameController.text,
      address: addressController.text,
      password: passwordController.text,
      department: jobController.text,
      dateofbirth: dobController.text,
      phone: phoneNumberController.text,
      joiningdate: jodController.text,
      salary: salaryController.text,
      image: ''));
    if(response!.error == null && response.token != null){
        Get.snackbar("Success", "Staff Added Successfully");
      Get.off(HomeView());
    }else{
      Get.snackbar("Error", response.error!);
    }
  }


}