class LoginReq {
  String? error;
  String? email;
  String? password;

  LoginReq({this.error, this.email, this.password});

  LoginReq.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
