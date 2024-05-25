import 'dart:convert';

List<Department> departmentFromJson(String str) =>
    List<Department>.from(json.decode(str).map((x) => Department.fromJson(x)));

class Department {
  int? id;
  String? name;
  String? address;
  int? phone;
  String? email;
  String? note;
  String? createdAt;
  String? updatedAt;
  int? createdBy;
  int? updatedBy;
  bool? active;
  bool? deleted;

  Department(
      {this.id,
      this.name,
      this.address,
      this.phone,
      this.email,
      this.note,
      this.createdAt,
      this.updatedAt,
      this.createdBy,
      this.updatedBy,
      this.active,
      this.deleted});

  Department.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    phone = json['phone'];
    email = json['email'];
    note = json['note'];
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
    data['name'] = this.name;
    data['address'] = this.address;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['note'] = this.note;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['createdBy'] = this.createdBy;
    data['updatedBy'] = this.updatedBy;
    data['active'] = this.active;
    data['deleted'] = this.deleted;
    return data;
  }
}