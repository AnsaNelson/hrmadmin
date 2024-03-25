import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmadmin/app/modules/register/controllers/register_controller.dart';
import 'package:hrmadmin/app/modules/register/views/register_view.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RegisterController());
    Get.put(LoginController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 80,
                  child: Image.asset('asset/image/logo.png'),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: controller.emailController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(143, 148, 251, 1),
                            ),
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    Obx(() =>   TextField(
                        controller: controller.passwordController,
                        obscureText: !controller.showPassword.value,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(143, 148, 251, 1),
                            ),
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Colors.grey[700],
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.showPassword.toggle();
                              print('sdfsdf');
                            },
                            icon: Icon(
                             !controller.showPassword.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                     Padding(
                       padding: const EdgeInsets.only(left: 150,),
                       child: TextButton(onPressed: (){
                         Get.to(()=>const RegisterView());
                       } ,child: Text("Register Now",style: TextStyle(fontWeight: FontWeight.bold),)),
                     ),
                     Container(
                       height: 50,
                       width: 100,
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
                         onPressed: () => controller.onClickLogin(),
                         child: Text(
                           "Login",
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
                    
                
                SizedBox(height: 20),
                    
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
