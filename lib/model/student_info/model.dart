class StudentInfoModel {
  String? name;
  String? id;
  String? password;
  int? assignment;
  int? assignmentmarks;
  int? attendance;
  int? attendancemark;

  StudentInfoModel({
    this.name,
    this.id,
    this.password,
    this.assignment,
    this.assignmentmarks,
    this.attendance,
    this.attendancemark,
  });
  StudentInfoModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    password = json['password'];
    assignment = json['assignment'];
    assignmentmarks = json['assignmentmarks'];
    attendance = json['attendance'];
    attendancemark = json['attendancemark'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['password'] = this.password;
    data['assignment'] = this.assignment;
    data['assignmentmarks'] = this.assignmentmarks;
    data['attendance'] = this.attendance;
    data['attendancemark'] = this.attendancemark;
    return data;
  }
}
