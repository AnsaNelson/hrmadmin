import 'package:get/get.dart';

import '../controllers/addstaff_controller.dart';

class AddstaffBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddstaffController>(
      () =>AddstaffController(),
    );
  }
}
