import 'package:get/get.dart';

class ViewClientController extends GetxController {
  RxList<Client> clientList = <Client>[
    Client('John Doe','app','730888888'),
    Client('Jane Doe','logo','24442211344'),
    Client('Alice Smith','web','332244555'),
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
}

class Client {
  final String name;
  final String work;
  final String number;

  Client(this.name, this.work, this.number);
}
