import 'package:dio/dio.dart';
import 'package:hrmadmin/app/networks/dio/repo/dio_client.dart';
import 'package:hrmadmin/app/networks/dio/repo/endpoints.dart';
import 'package:hrmadmin/app/networks/dio/repo/models/req/addstaff_req.dart';
import 'package:hrmadmin/app/networks/dio/repo/models/res/addstaff_res.dart';

class Staff {
  final DioClient dioClient = DioClient(Dio());

   Future<AddStaffRes?> addStaff(AddStaffReq addStaffReq) async {
    try {
      final response = await dioClient.mainReqRes(
        endPoints: EndPoints.register,
        data: addStaffReq.toJson(),
      );
      if (response.statusCode == 200) {
        final addstaffResponse = AddStaffRes.fromJson(response.data);
        if (addstaffResponse.token != null) {
          return addstaffResponse;
        } else {
          final addstaffResponse =
              AddStaffRes(error: "User Not Register! Something wrong");
          return addstaffResponse;
        }
      } else {
        final addstaffResponse = AddStaffRes.fromJson(response.data);
        if (response.statusCode == 400) {
          return addstaffResponse;
        } else {
          return AddStaffRes.fromJson(response.data);
        }
      }
    } catch (e) {
      return AddStaffRes(error: "Unexpected Error");
    }
  }
}
