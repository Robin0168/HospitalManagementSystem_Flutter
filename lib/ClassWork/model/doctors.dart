import 'dart:convert';

List<doctors> doctorsFromJson(String str) =>
    List<doctors>.from(json.decode(str).map((x) => doctors.fromJson(x)));

class doctors {
  int? id;
  String? name;
  String? departmentId;
  int? mobile;
  String? phone;
  String? email;
  String? visitPrice;
  String? followupPrice;
  String? note;
  String? departmentName;
  String? createdAt;
  String? updatedAt;
  String? createdBy;
  String? updatedBy;
  bool? active;
  bool? deleted;

  doctors(
      {this.id,
      this.name,
      this.departmentId,
      this.mobile,
      this.phone,
      this.email,
      this.visitPrice,
      this.followupPrice,
      this.note,
      this.departmentName,
      this.createdAt,
      this.updatedAt,
      this.createdBy,
      this.updatedBy,
      this.active,
      this.deleted});

  doctors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    departmentId = json['department_id'];
    mobile = json['mobile'];
    phone = json['phone'];
    email = json['email'];
    visitPrice = json['visit_price'];
    followupPrice = json['followup_price'];
    note = json['note'];
    departmentName = json['departmentName'];
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
    data['department_id'] = this.departmentId;
    data['mobile'] = this.mobile;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['visit_price'] = this.visitPrice;
    data['followup_price'] = this.followupPrice;
    data['note'] = this.note;
    data['departmentName'] = this.departmentName;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['createdBy'] = this.createdBy;
    data['updatedBy'] = this.updatedBy;
    data['active'] = this.active;
    data['deleted'] = this.deleted;
    return data;
  }
}
