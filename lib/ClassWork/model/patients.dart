import 'dart:convert';

List<Patients> patientsFromJson(String str) =>
    List<Patients>.from(json.decode(str).map((x) => Patients.fromJson(x)));

class Patients {
  int? id;
  String? lastName;
  String? firstName;
  String? dateOfBirth;
  String? address1;
  String? address2;
  String? city;
  int? zipCode;
  String? country;
  int? mobile;
  String? email;
  int? emergencyContactPersonId;
  String? departmentName;
  String? doctorName;
  String? createdAt;
  String? updatedAt;
  int? createdBy;
  int? updatedBy;
  bool? active;
  bool? deleted;

  Patients(
      {this.id,
      this.lastName,
      this.firstName,
      this.dateOfBirth,
      this.address1,
      this.address2,
      this.city,
      this.zipCode,
      this.country,
      this.mobile,
      this.email,
      this.emergencyContactPersonId,
      this.departmentName,
      this.doctorName,
      this.createdAt,
      this.updatedAt,
      this.createdBy,
      this.updatedBy,
      this.active,
      this.deleted});

  Patients.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lastName = json['lastName'];
    firstName = json['firstName'];
    dateOfBirth = json['dateOfBirth'];
    address1 = json['address1'];
    address2 = json['address2'];
    city = json['city'];
    zipCode = json['zipCode'];
    country = json['country'];
    mobile = json['mobile'];
    email = json['email'];
    emergencyContactPersonId = json['emergencyContactPersonId'];
    departmentName = json['departmentName'];
    doctorName = json['doctorName'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    createdBy = json['createdBy'];
    updatedBy = json['updatedBy'];
    active = json['active'];
    deleted = json['deleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['lastName'] = this.lastName;
    data['firstName'] = this.firstName;
    data['dateOfBirth'] = this.dateOfBirth;
    data['address1'] = this.address1;
    data['address2'] = this.address2;
    data['city'] = this.city;
    data['zipCode'] = this.zipCode;
    data['country'] = this.country;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['emergencyContactPersonId'] = this.emergencyContactPersonId;
    data['departmentName'] = this.departmentName;
    data['doctorName'] = this.doctorName;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['createdBy'] = this.createdBy;
    data['updatedBy'] = this.updatedBy;
    data['active'] = this.active;
    data['deleted'] = this.deleted;
    return data;
  }
}