class NotificationModel {
  NotificationModel({
    required this.title,
    required this.description,
    required this.date,
  });
  late final String title;
  late final String description;
  late final String date;

  NotificationModel.fromJson(Map<dynamic, dynamic> json) {
    title = json['title'];
    description = json['description'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['description'] = description;
    _data['date'] = date;
    return _data;
  }
}
