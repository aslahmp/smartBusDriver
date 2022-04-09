class MothlyUserPaymentModel {
  late num amunt;
  late String date;
  late String month;
  late bool isPaid;
  late bool isOnlinePay;
  MothlyUserPaymentModel(
      {required this.amunt,
      required this.date,
      required this.month,
      required this.isPaid,
      required this.isOnlinePay});
  MothlyUserPaymentModel.fromjson(Map<dynamic, dynamic> json) {
    amunt = json['amunt'] ?? 0;
    date = json['date'] ?? '0';
    month = json['month'] ?? '';
    isPaid = json['isPaid'] ?? true;
    isOnlinePay = json['isOnlinePay'] ?? false;
  }
  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["amunt"] = amunt;
    _data["date"] = date;
    _data["month"] = month;
    _data["isPaid"] = isPaid;
    _data["isOnlinePay"] = isOnlinePay;
    return _data;
  }
}
