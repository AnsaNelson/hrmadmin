

import 'package:hrmadmin/app/networks/dio/repo/dio_client.dart';

enum EndPoints {
  login,

}

extension EndPointData on EndPoints {
  String path() {
    String path = "";
    switch (this) {

      case EndPoints.login:
        path = "api/user/login";
  
    }
    return path;
  }

  ReqType type() {
    ReqType type;
    switch (this) {
      case EndPoints.login:
        type = ReqType.POST;

    }
    return type;
  }

  bool hasToken() {
    bool hasToken = false;
    switch (this) {
      case EndPoints.login:
        hasToken = false;
        break;
   
    }
    return hasToken;
  }
}