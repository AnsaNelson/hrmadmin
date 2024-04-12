class AllWorkDetailsRes {
  String? error;
  String? sId;
  String? name;
  String? date;
  String? businessName;
  String? description;
  String? phoneNumber;
  String? department;
  String? status;
  int? iV;

  AllWorkDetailsRes(
      {this.error,
      this.sId,
      this.name,
      this.date,
      this.businessName,
      this.description,
      this.phoneNumber,
      this.department,
      this.status,
      this.iV});

  AllWorkDetailsRes.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    sId = json['_id'];
    name = json['name'];
    date = json['date'];
    businessName = json['businessName'];
    description = json['description'];
    phoneNumber = json['phoneNumber'];
    department = json['department'];
    status = json['status'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['date'] = this.date;
    data['businessName'] = this.businessName;
    data['description'] = this.description;
    data['phoneNumber'] = this.phoneNumber;
    data['department'] = this.department;
    data['status'] = this.status;
    data['__v'] = this.iV;
    return data;
  }
}
