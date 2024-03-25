import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmadmin/app/modules/home/views/home_view.dart';
import 'package:hrmadmin/app/modules/workdetails/controllers/workdetails_controller.dart';
import 'package:hrmadmin/app/theme/color.dart';
import 'package:hrmadmin/app/widget/top_container.dart';

class WorkdetailsView extends GetView<WorkdetailsController> {
  const WorkdetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(WorkdetailsController());
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: LightColors.kLightYellow,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                TopContainer(
                  height: 200,
                  width: width,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: const Color.fromARGB(255, 239, 240, 243),
                              radius: 35.0,
                              backgroundImage: AssetImage(
                                'assets/images/avatar.png',
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Sourav Suman',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      color: LightColors.kDarkBlue,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'App Developer',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 10,
                  child: InkWell(
                    onTap: () {
                      Get.off(HomeView())     ;               },
                    child: Icon(Icons.arrow_back)))
              ],
            ),
            SizedBox(height: 10,),
            Expanded(
              child:  ListView.builder(
        itemCount: controller.client.length,
        itemBuilder: (context, index) {
       return Container(
        height: 80,
        width: 30,
         child: Card(
          child: Column(
            children: [
         ListTile(
          title: Text(controller.client[index].name),
          subtitle: Text(controller.client[index].work),
          trailing: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            height: 60,
            width: 60,
            child: Center(child: Text(controller.client[index].status)),
          ),            
         )
            // Center(child: Text(controller.clientList[index].name))
          ]
          ,) 
          ),
       );
      })
            ),
          ],
        ),
      ),
    );
  }
}