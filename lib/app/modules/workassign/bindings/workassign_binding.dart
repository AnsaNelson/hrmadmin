import 'package:get/get.dart';

import '../controllers/workassign_controller.dart';

class WorkassignBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorkassignController>(
      () => WorkassignController(),
    );
  }
}
