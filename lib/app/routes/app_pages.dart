import 'package:get/get.dart';

import '../modules/Addstaff/bindings/addstaff_binding.dart';
import '../modules/Addstaff/views/addstaff_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/ViewClient/bindings/view_client_binding.dart';
import '../modules/ViewClient/views/view_client_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/workassign/bindings/workassign_binding.dart';
import '../modules/workassign/views/workassign_view.dart';
import '../modules/workdetails/bindings/workdetails_binding.dart';
import '../modules/workdetails/views/workdetails_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ADDSTAFF,
      page: () => AddstaffView(),
      binding: AddstaffBinding(),
    ),
    GetPage(
      name: _Paths.WORKASSIGN,
      page: () => const WorkassignView(),
      binding: WorkassignBinding(),
    ),
    GetPage(
      name: _Paths.WORKDETAILS,
      page: () => const WorkdetailsView(),
      binding: WorkdetailsBinding(),
    ),
    GetPage(
      name: _Paths.VIEW_CLIENT,
      page: () => const ViewClientView(),
      binding: ViewClientBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
  ];
}
