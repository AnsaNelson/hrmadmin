import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('RegisterView'),
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          child: Column(
            children: [Text("Register ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  hintText: "Name"
                ),              
              ),
           
            ),
            SizedBox(height: 10,),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  hintText: "Email"
                ),              
              ),
           
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  hintText: "password"
                ),              
              ),
           
            ),
            ],
          )),
      )
    );
  }
}
