class UserData {
  String? name;
  String? dob;
  int? age;
  String? address;
  String? mobile;
  String? gender;
  String? jobRole;
  String? skill;

  UserData({
    this.name,
    this.dob,
    this.age,
    this.address,
    this.mobile,
    this.gender,
    this.jobRole,
    this.skill,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        name: json['name'] as String?,
        dob: json['dob'] as String?,
        age: json['age'] as int?,
        address: json['address'] as String?,
        mobile: json['mobile'] as String?,
        gender: json['gender'] as String?,
        jobRole: json['job_role'] as String?,
        skill: json['skill'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'dob': dob,
        'age': age,
        'address': address,
        'mobile': mobile,
        'gender': gender,
        'job_role': jobRole,
        'skill': skill,
      };
}
