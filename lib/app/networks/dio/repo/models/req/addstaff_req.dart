class AddStaffReq {
  String? error;
  String? name;
  String? email;
  String? password;
  String? image;
  String? dateofbirth;
  String? joiningdate;
  String? salary;
  String? department;
  String? phone;
  String? address;

  AddStaffReq(
      {this.error,
      this.name,
      this.email,
      this.password,
      this.image,
      this.dateofbirth,
      this.joiningdate,
      this.salary,
      this.department,
      this.phone,
      this.address});

  AddStaffReq.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    image = json['image'];
    dateofbirth = json['dateofbirth'];
    joiningdate = json['joiningdate'];
    salary = json['salary'];
    department = json['department'];
    phone = json['phone'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['image'] = this.image;
    data['dateofbirth'] = this.dateofbirth;
    data['joiningdate'] = this.joiningdate;
    data['salary'] = this.salary;
    data['department'] = this.department;
    data['phone'] = this.phone;
    data['address'] = this.address;
    return data;
  }
}
