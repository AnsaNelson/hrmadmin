import 'dart:io';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:motion_toast/motion_toast.dart';

class AddstaffController extends GetxController {
 final TextEditingController emailController=TextEditingController();
  final TextEditingController nameController=TextEditingController();
  final TextEditingController addressController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final TextEditingController dobController=TextEditingController();
  final TextEditingController phoneNumberController=TextEditingController();
  final TextEditingController jodController=TextEditingController();
  final TextEditingController salaryController=TextEditingController();
  GlobalKey<FormState>signupFormKey=GlobalKey<FormState>();
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

  void increment() => count.value++;
  void Signup(BuildContext context) {
    String email = emailController.text.trim();
    String password =passwordController.text.trim();
    String address=addressController.text.trim();
    String  Joining=jodController.text.trim();
    String dob=dobController.text.trim();
    String salary=salaryController.text.trim();
    String phone=phoneNumberController.text.trim();
 if (email.isEmpty || !EmailValidator.validate(email)) {
      MotionToast.warning(
        title: Text("Enter Correct Email"),
        description: Text("Please enter a valid email address."),
      ).show(context);
  }
  else if(password.isEmpty||password.length<6||!password.contains(RegExp(r'[A-Z]'))){
MotionToast.warning(
        title: Text("Enter Correct password"),
        description: Text("Please enter atleast more than 6 characters and also enter special characters."),
     

      ).show(context);

  }else if(address.isEmpty){
    MotionToast.warning(
        title: Text("Enter Correct password"),
         description: Text("Please enter address."),
     
    ).show(context);
  }else if(dob.isEmpty||!dob.contains(RegExp(r'^\d{4}-\d{2}-\d{2}$'))){
    MotionToast.warning(
        title: Text("Enter Correct Date of Birth"),
         description: Text("Please enter valid date of birth."),
     
    ).show(context);

  }else if(Joining.isEmpty||!Joining.contains(RegExp(r'^\d{4}-\d{2}-\d{2}$'))){
    MotionToast.warning(
        title: Text("Enter valid Joining date"),
         description: Text("Please enter valid Joining date(yyyy-mm-dd)."),
     
    ).show(context);
    
  }
  else if(phone.isEmpty||!phone.contains(RegExp(r'^\d{10}$'))){
    MotionToast.warning(
        title: Text("Enter valid Phone Number"),
         description: Text("Please enter valid Phone Number(yyyy-mm-dd)."),
     
    ).show(context);
    
  }else if(salary.isEmpty){
    MotionToast.warning(
        title: Text("Enter valid Salary"),
         description: Text("Please enter Salary."),
     
    ).show(context);
    
  }else{
     MotionToast.warning(
        title: Text("Submitted"),
         description: Text("Sucessfully Submited."),
     
    ).show(context);

  }
  }
  Future<void> pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      update(); // Refresh the UI to display the selected image
    }
  }

   
}
