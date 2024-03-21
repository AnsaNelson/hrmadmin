import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hrmadmin/app/modules/ViewClient/controllers/view_client_controller.dart';



class ViewClientView extends GetView<ViewClientController> {
  const ViewClientView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client Details'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.clientList.length,
        itemBuilder: (context, index) {
       return Container(
        height: 80,
        width: 30,
         child: Card(
          child: Column(
            children: [
         ListTile(
          title: Text(controller.clientList[index].name),
          subtitle: Text(controller.clientList[index].work),
          trailing: Text(controller.clientList[index].number),
         )
            // Center(child: Text(controller.clientList[index].name))
          ]
          ,) 
          ),
       );
      })
    );
  }
}
