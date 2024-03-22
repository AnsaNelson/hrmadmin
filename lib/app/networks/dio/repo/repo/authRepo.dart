import 'package:dio/dio.dart';
import 'package:hrmadmin/app/networks/dio/repo/dio_client.dart';
import 'package:hrmadmin/app/networks/dio/repo/endpoints.dart';
import 'package:hrmadmin/app/networks/dio/repo/models/req/register_req.dart';
import 'package:hrmadmin/app/networks/dio/repo/models/res/register_res.dart';

class AuthRepo {
  final DioClient dioClient = DioClient(Dio());

  Future<RegisterRes?> register(RegisterReq registerReq) async {
    try {
      final response = await dioClient.mainReqRes(
        endPoints: EndPoints.register,
        data: registerReq.toJson(),
      );
      if (response.statusCode == 200) {
        final signupResponse = RegisterRes.fromJson(response.data);
        if (signupResponse.token != null) {
          return signupResponse;
        } else {
          final signupResponse =
              RegisterRes(error: "User Not Register! Something wrong");
          return signupResponse;
        }
      } else {
        final signupResponse = RegisterRes.fromJson(response.data);
        if (response.statusCode == 500) {
          return signupResponse;
        } else {
          return RegisterRes.fromJson(response.data);
        }
      }
    } catch (e) {
      return RegisterRes(error: "Unexpected Error");
    }
  }
}
