import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hrmadmin/app/networks/dio/repo/models/req/addstaff_req.dart';

class HomeController extends GetxController {
 RxList<Staff> staffList = <Staff>[
    Staff('John Doe', 'assets/john_doe_photo.jpg'),
    Staff('Jane Doe', 'assets/jane_doe_photo.jpg'),
    Staff('Alice Smith', 'assets/alice_smith_photo.jpg'),
  ].obs;

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

  void addStaff(String name, String photoUrl) {
    staffList.add(Staff(name, photoUrl));
    update(); // Notify listeners that the staffList has changed
  }
}

class Staff {
  final String name;
  final String photoUrl;

  Staff(this.name, this.photoUrl);

  addstaff(AddStaffReq addStaffReq) {}
}
