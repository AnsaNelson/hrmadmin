import 'package:hrmadmin/app/networks/dio/repo/dio_client.dart';

enum EndPoints {
  register,
}

extension EndPointData on EndPoints {
  String path() {
    String path = "";
    switch (this) {
      case EndPoints.register:
        path = "api/admin/register";
    }
    return path;
  }

  ReqType type() {
    ReqType type;
    switch (this) {
      case EndPoints.register:
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
    }
    return hasToken;
  }
}
