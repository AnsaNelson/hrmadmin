import 'package:get/get.dart';

import '../controllers/view_client_controller.dart';

class ViewClientBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewClientController>(
      () => ViewClientController(),
    );
  }
}
