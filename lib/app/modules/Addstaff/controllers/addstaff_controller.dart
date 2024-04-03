
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmadmin/app/modules/home/views/home_view.dart';
import 'package:hrmadmin/app/networks/dio/repo/models/req/addstaff_req.dart';
import 'package:hrmadmin/app/networks/dio/repo/repo/staff.dart';
import 'package:image_picker/image_picker.dart';

class AddstaffController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController jobController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController jodController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  File? imageFile;
  String? imageUrl;
 

  //final count = 0.obs;
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


  Future<void> pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      update();

      //Call uploadImageToFirebase to upload the picked image 
      await uploadImageToFirebase();
    }
  }

  Future<void> uploadImageToFirebase() async {
    if (imageFile != null) {
      try {
        String uniqueFileName = '${DateTime.now().millisecondsSinceEpoch}.jpg';
        Reference referenceRoot = FirebaseStorage.instance.ref();
        Reference referenceDirImages = referenceRoot.child('profile');
        Reference referenceImageToUpload =
            referenceDirImages.child(uniqueFileName);

        await referenceImageToUpload.putFile(imageFile!);

        imageUrl = await referenceImageToUpload.getDownloadURL();

        // Now you have the image URL, you can use it as needed
        print('Image uploaded successfully. URL: $imageUrl');

        // Update UI after uploading image
        update();
      } catch (e) {
        print('Error uploading image to Firebase Storage: $e');
      }
    }
  }

  onClickAddStaff() async {
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
        image: imageUrl,
        error: null));
    if (response!.error == null && response.token != null) {
      Get.snackbar("Success", "Staff Added Successfully");
      Get.off(HomeView());
    } else {
      Get.snackbar("Error", response.error!);
    }
  }
}
