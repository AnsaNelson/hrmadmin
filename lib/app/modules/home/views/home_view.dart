import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmadmin/app/modules/Addstaff/controllers/addstaff_controller.dart';
import 'package:hrmadmin/app/modules/Addstaff/views/addstaff_view.dart';
import 'package:hrmadmin/app/modules/Login/views/login_view.dart';
import 'package:hrmadmin/app/modules/ViewClient/controllers/view_client_controller.dart';
import 'package:hrmadmin/app/modules/ViewClient/views/view_client_view.dart';
import 'package:hrmadmin/app/modules/home/controllers/home_controller.dart';
import 'package:hrmadmin/app/modules/workassign/controllers/workassign_controller.dart';
import 'package:hrmadmin/app/modules/workassign/views/workassign_view.dart';
import 'package:hrmadmin/app/modules/workdetails/controllers/workdetails_controller.dart';
import 'package:hrmadmin/app/modules/workdetails/views/workdetails_view.dart';


class HomeView extends GetView<HomeController> {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    Get.put(AddstaffController());
    Get.put(WorkassignController());
    Get.put(ViewClientController());
    Get.put(WorkdetailsController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              _showMenuDialog(context);
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/circle_picture.jpg'),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: controller.staffList.length,
              itemBuilder: (context, index) {
                final staff = controller.staffList[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(staff.photoUrl),
                      ),
                      title: Text(staff.name),
                      subtitle: Text('Additional Info'),
                      onTap: () {
                        // Navigate to the AddstaffView page when tapping on the staff item
                        Get.to(() => WorkdetailsView());
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the Add Work Details page
          Get.to(() => AddstaffView());
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _showMenuDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Menu'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('Add Work'),
                onTap: () {
                  Get.to(()=>WorkassignView());
                },
              ),
              ListTile(
                title: const Text('View Client'),
                onTap: () {
                  Get.to(()=>ViewClientView());
                },
              ),
              ListTile(
                title: const Text('Logout'),
                onTap: () {
                  // Handle 'Logout'
                  Get.to(LoginView());
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _assignWork(Staff staff) {
    // Handle work assignment for the specific staff
  }
}
