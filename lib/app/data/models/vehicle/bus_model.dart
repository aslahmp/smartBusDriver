class BusModel {
  BusModel(
      {required this.id,
      required this.number,
      required this.driverId,
      required this.isTrackEnabled});
  late final String id;
  late final String number;
  String? driverId;
  late bool isTrackEnabled;

  BusModel.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    number = json['number'];
    driverId = json['driverId'] ?? '';
    isTrackEnabled = json['isTrackEnabled'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['number'] = number;
    _data['driverId'] = driverId ?? '';
    _data['isTrackEnabled'] = isTrackEnabled;
    return _data;
  }
}
