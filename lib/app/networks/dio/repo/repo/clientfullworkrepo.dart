import 'package:dio/dio.dart';
import 'package:hrmadmin/app/networks/dio/repo/dio_client.dart';
import 'package:hrmadmin/app/networks/dio/repo/endpoints.dart';
import 'package:hrmadmin/app/networks/dio/repo/models/res/allworkdetails_res.dart';

class ClientFullWorkRepo {
  final DioClient dioClient = DioClient(Dio());
  Future<AllWorkDetailsRes?> getStaff() async {
    try {
      final response = await dioClient.mainReqRes(
        endPoints: EndPoints.workdetails,
      );
      if (response.statusCode == 200) {
        final userResponse = AllWorkDetailsRes.fromJson(response.data);
        return userResponse;
      } else {
        final userResponse = AllWorkDetailsRes.fromJson(response.data);
        if (response.statusCode == 400) {
          return userResponse;
        } else {
          return AllWorkDetailsRes.fromJson(response.data);
        }
      }
    } catch (e) {
      return AllWorkDetailsRes(error: "unexpected error");
  }
 }
}

