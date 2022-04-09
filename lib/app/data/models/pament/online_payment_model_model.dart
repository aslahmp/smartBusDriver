class OnlinePaymentModelModel {
  late num amunt;
  late String date;
  late String month;
  late String orderId;
  late String paymentId;
  late String signature;
  late String userId;
  OnlinePaymentModelModel(
      {required this.amunt,
      required this.date,
      required this.month,
      required this.orderId,
      required this.paymentId,
      required this.signature,
      required this.userId});
  OnlinePaymentModelModel.fromjson(Map<dynamic, dynamic> json) {
    userId = json['userId'] ?? '';
    amunt = json['amunt'] ?? 0;
    date = json['date'] ?? '0';
    month = json['month'] ?? '';
    orderId = json['orderId'] ?? '';
    paymentId = json['paymentId'] ?? '';

    signature = json['signature'] ?? '';
  }
  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data["userId"] = userId;
    _data["amunt"] = amunt;
    _data["date"] = date;
    _data["month"] = month;
    _data["orderId"] = orderId;
    _data["paymentId"] = paymentId;
    _data["signature"] = signature;
    return _data;
  }
}
