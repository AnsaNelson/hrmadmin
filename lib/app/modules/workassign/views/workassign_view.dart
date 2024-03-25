import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmadmin/app/modules/workassign/controllers/workassign_controller.dart';

class WorkassignView extends GetView<WorkassignController> {
  const WorkassignView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(WorkassignController());
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Client Form')),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildTextField(context, 'Name', controller.nameController),
            SizedBox(height: 12),
            buildDateTimeField(context, 'Select Date'),
            SizedBox(height: 12),
            buildTextField(context, 'Business Name', controller.businessNameController),
            SizedBox(height: 12),
            buildTextField(context, 'Description', controller.descriptionController),
            SizedBox(height: 12),
            buildTextField(context, 'Phone Number', controller.phoneNumberController),
            SizedBox(height: 12),
            buildDropdownField('Select an Option', controller.dropdownOptions, controller.selectedOption),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(143, 148, 251, 1),
                    Color.fromRGBO(143, 148, 251, .6),
                  ],
                ),
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context, String label, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      maxLines: label == 'Description' ? 5 : 1,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        fillColor: Colors.grey[200],
        filled: true,
      ),
    );
  }

  Widget buildDateTimeField(BuildContext context, String label) {
    return InkWell(
      onTap: () async {
        DateTime? pickedDate = await _selectDate(context);
        if (pickedDate != null) {
          controller.selectedDate = pickedDate;
        }
      },
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
          fillColor: Colors.grey[200],
          filled: true,
        ),
        child: Row(
          children: [
            Icon(Icons.calendar_today),
            SizedBox(width: 10),
            Text(controller.selectedDate != null
                ? '${controller.selectedDate!.toLocal()}'.split(' ')[0]
                : 'Select Date'),
          ],
        ),
      ),
    );
  }

  Future<DateTime?> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );

    return pickedDate;
  }

  Widget buildDropdownField(String label, List<String> options, String selectedValue) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        fillColor: Colors.grey[200],
        filled: true,
      ),
      value: selectedValue,
      onChanged: (newValue) {
        controller.selectedOption = newValue.toString();
      },
      items: options.map((option) {
        return DropdownMenuItem(
          value: option,
          child: Text(option),
        );
      }).toList(),
    );
  }
}
