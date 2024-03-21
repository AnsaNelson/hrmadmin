import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkassignController extends GetxController {
  
  final TextEditingController nameController = TextEditingController();
  final TextEditingController businessNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  String selectedOption = 'Social Media Ads'; // Default value for the dropdown
  DateTime? selectedDate; // Property to store the selected date

  List<String> dropdownOptions = [
    'Social Media Ads',
    'Logos',
    'Sign Board',
    'Mobile Application',
    'Brochure',
    'Flyer',
    'Packaging',
    'Online Promotion',
    'Developing Ideas',
    'Website Development',
    'YouTube Promotion ',
    'Digital Monetization',
    'Business/corporate',
    'Poster',
    'Business Cards',
    'News Paper Ads',
    'Banners',
    'Hordings',
    'SEO/SEM',
    'Google Ads',
    'B2B Family',
    'Admin Support',
    'eCommerce Website',
    'Social Media Website',
    'Personal Website',
  ];

  void submitForm() {
    // Implement your form submission logic here
    print('Name: ${nameController.text}');
    print('Business Name: ${businessNameController.text}');
    print('Phone Number: ${phoneNumberController.text}');
    print('Selected Option: $selectedOption');
    if (selectedDate != null) {
      print('Selected Date: $selectedDate');
    }
  }
}
