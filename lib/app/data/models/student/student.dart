class StudentModel {
  StudentModel({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.email,
    required this.departmentId,
    required this.year,
    required this.locationId,
    required this.imageUrl,
  });
  late final String id;
  late final String name;
  late final int phoneNumber;
  late final String email;
  late final String departmentId;
  late final int year;
  late final String locationId;
  late final String imageUrl;

  StudentModel.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    departmentId = json['departmentId'];
    year = json['year'];
    locationId = json['locationId'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['phoneNumber'] = phoneNumber;
    _data['email'] = email;
    _data['departmentId'] = departmentId;
    _data['year'] = year;
    _data['locationId'] = locationId;
    _data['imageUrl'] = imageUrl;
    return _data;
  }
}
