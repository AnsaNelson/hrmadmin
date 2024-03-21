import 'package:get/get.dart';

import '../controllers/workdetails_controller.dart';

class WorkdetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorkdetailsController>(
      () => WorkdetailsController(),
    );
  }
}
