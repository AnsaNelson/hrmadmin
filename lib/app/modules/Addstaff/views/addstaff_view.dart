
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/addstaff_controller.dart';

class AddstaffView extends GetView<AddstaffController> {
  const AddstaffView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('STAFF', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromARGB(255, 252, 255, 252),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                
               Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        // => controller.pickImage(),
                        child: Container(
                          width:MediaQuery.of(context).size.width/2,
                          height: 120,
                          child: Center(child: Icon(Icons.camera)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            shape: BoxShape.rectangle,
                             gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(143, 148, 251, 1),
                                Color.fromRGBO(143, 148, 251, .6),
                              ],
                            ),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: controller.imageFile != null
                                  ? FileImage(controller.imageFile!)
                                  : AssetImage('assets/images/default_image.png') as ImageProvider,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: controller.nameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            icon: Icon(Icons.person),
                            hintText: 'What do people call you?',
                            labelText: 'Name *',
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: controller.emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            icon: Icon(Icons.email),
                            hintText: 'Your email',
                            labelText: 'Email *',
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: controller.addressController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your address';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            icon: Icon(Icons.add_to_home_screen_rounded),
                            hintText: 'Where do you live?',
                            labelText: 'Address *',
                          ),
                        ),
                      ),
                        SizedBox(height: 16),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: controller.jobController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter department';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            icon: Icon(Icons.work),
                            hintText: 'Enter your designation',
                            labelText: 'Department*',
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: controller.dobController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Date of Birth';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            icon: Icon(Icons.date_range),
                            hintText: 'When were you born?',
                            labelText: 'Date of Birth *',
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: controller.jodController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Joining Date';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            icon: Icon(Icons.date_range),
                            hintText: 'When did you join?',
                            labelText: 'Joining Date *',
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: controller.salaryController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your salary';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            icon: Icon(Icons.attach_money),
                            hintText: 'What is your salary?',
                            labelText: 'Salary *',
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: controller.phoneNumberController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your phone number';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            icon: Icon(Icons.phone),
                            hintText: 'How can we reach you?',
                            labelText: 'Phone Number *',
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: controller.passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            icon: Icon(Icons.lock),
                            hintText: 'Secure your account',
                            labelText: 'Password *',
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      InkWell(
                        onTap: () {

                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3,
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(143, 148, 251, 1),
                                Color.fromRGBO(143, 148, 251, .6),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ElevatedButton(
                         onPressed: () => controller.onClickAddStaff(),
                          child: Center(
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: Color.fromRGBO(143, 148, 251, .6),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      ),
                    ],
                  ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
