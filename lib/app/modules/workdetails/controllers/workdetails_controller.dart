
import 'package:get/get.dart';
import 'package:hrmadmin/app/networks/dio/repo/models/res/allworkdetails_res.dart';
import 'package:hrmadmin/app/networks/dio/repo/repo/clientfullworkrepo.dart';

class WorkdetailsController extends GetxController {

  final department= Get.arguments;
  
   final List<AllWorkDetailsRes> works = <AllWorkDetailsRes>[].obs;

 
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

 // void increment() => count.value++;
 Future<AllWorkDetailsRes?>fetchclient(department)async{
     ClientFullWorkRepo repo=ClientFullWorkRepo();
    final response = await repo.getStaff();
    return response;
    
  }

}


// class ClientW {
//   final String name;
//   final String work;
//   final String status;

//   ClientW(this.name, this.work, this.status);
