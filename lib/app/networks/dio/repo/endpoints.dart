import 'package:hrmadmin/app/networks/dio/repo/dio_client.dart';

enum EndPoints {
  register,
  login,
  addstaff,
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
    }
    return path;
  }

  ReqType type() {
    ReqType type;
    switch (this) {
      case EndPoints.register:
        type = ReqType.POST;
      case EndPoints.login:
        type = ReqType.POST;
      case EndPoints.addstaff:
        type = ReqType.POST;
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
    }
    return hasToken;
  }
}
