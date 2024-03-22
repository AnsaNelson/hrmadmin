class RegisterReq {
  String? error;
  String? email;
  String? name;
  String? password;

  RegisterReq({this.error, this.email, this.name, this.password});

  RegisterReq.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    email = json['email'];
    name = json['name'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['email'] = this.email;
    data['name'] = this.name;
    data['password'] = this.password;
    return data;
  }
}
