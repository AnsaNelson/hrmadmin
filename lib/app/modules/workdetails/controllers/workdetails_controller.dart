import 'package:get/get.dart';

class WorkdetailsController extends GetxController {
  
 RxList<ClientW> client = <ClientW>[
    ClientW('John Doe','ecomerce','Pending'),
    ClientW('Jane Doe','hrm','Complete',),
    ClientW('Alice Smith','ecommerce','Complete'),
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
}
class ClientW {
  final String name;
  final String work;
  final String status;

  ClientW(this.name, this.work, this.status);
}