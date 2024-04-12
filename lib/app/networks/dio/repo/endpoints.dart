
import 'package:hrmadmin/app/networks/dio/repo/dio_client.dart';

enum EndPoints {
  register,
  login,
  addstaff,
  workdetails,
}

extension EndPointData on EndPoints {
  String path() {
    String path = "";
    switch (this) {
      case EndPoints.register:
        path = "api/admin/register";
      case EndPoints.login:
        path ="api/admin/login";
      case EndPoints.addstaff:
        path = "api/admin/user/register";
      case EndPoints.workdetails:
        path = "/api/admin/allclients";
        break;
    }
    return path;
  }

  ReqType type() {
    ReqType type;
    switch (this) {
      case EndPoints.register:
        type = ReqType.POST;
        break;
      case EndPoints.login:
        type = ReqType.POST;
        break;
      case EndPoints.addstaff:
        type = ReqType.POST;
        break;
      case EndPoints.workdetails:
        type = ReqType.GET;
        break;
    }
    return type;
  }

  bool hasToken() {
    bool hasToken = false;
    switch (this) {
      case EndPoints.register:
        hasToken = false;
        break;
      case EndPoints.login:
        hasToken = false;
        break;
      case EndPoints.addstaff:
        hasToken = false;
        break;
      case EndPoints.workdetails:
        hasToken = true;
        break;
    }
    return hasToken;
  }
}
