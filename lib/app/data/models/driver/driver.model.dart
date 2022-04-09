class Driver {
  Driver({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.email,
    this.busId,
  });
  late final String id;
  late final dynamic name;
  late final int phoneNumber;
  late final String email;
  String? busId;

  Driver.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    phoneNumber = json['phoneNumber'];
    email = json['email'];
    busId = json['busId'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['phoneNumber'] = phoneNumber;
    _data['email'] = email;
    _data['busId'] = busId;
    return _data;
  }
}
