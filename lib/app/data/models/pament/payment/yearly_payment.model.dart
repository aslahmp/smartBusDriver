import '../../../../../infastructure/managers/index.dart';
import 'mothly_payment.model.dart';

class YearlyUserPaymentModel {
  late MothlyUserPaymentModel? jan;
  late MothlyUserPaymentModel? feb;
  late MothlyUserPaymentModel? mar;
  late MothlyUserPaymentModel? apr;
  late MothlyUserPaymentModel? may;
  late MothlyUserPaymentModel? jun;
  late MothlyUserPaymentModel? jul;
  late MothlyUserPaymentModel? aug;
  late MothlyUserPaymentModel? sep;
  late MothlyUserPaymentModel? oct;
  late MothlyUserPaymentModel? nov;
  late MothlyUserPaymentModel? dec;
  List<MothlyUserPaymentModel> getList() {
    return [
      jan ??
          MothlyUserPaymentModel(
            amunt: 0,
            date: '',
            month: MonthManager.getMonthName('jan'),
            isPaid: false,
            isOnlinePay: false,
          ),
      feb ??
          MothlyUserPaymentModel(
            amunt: 0,
            date: '',
            month: MonthManager.getMonthName('feb'),
            isPaid: false,
            isOnlinePay: false,
          ),
      mar ??
          MothlyUserPaymentModel(
            amunt: 0,
            date: '',
            month: MonthManager.getMonthName('mar'),
            isPaid: false,
            isOnlinePay: false,
          ),
      apr ??
          MothlyUserPaymentModel(
            amunt: 0,
            date: '',
            month: MonthManager.getMonthName('apr'),
            isPaid: false,
            isOnlinePay: false,
          ),
      may ??
          MothlyUserPaymentModel(
            amunt: 0,
            date: '',
            month: MonthManager.getMonthName('may'),
            isPaid: false,
            isOnlinePay: false,
          ),
      jun ??
          MothlyUserPaymentModel(
            amunt: 0,
            date: '',
            month: MonthManager.getMonthName('jun'),
            isPaid: false,
            isOnlinePay: false,
          ),
      jul ??
          MothlyUserPaymentModel(
            amunt: 0,
            date: '',
            month: MonthManager.getMonthName('jul'),
            isPaid: false,
            isOnlinePay: false,
          ),
      aug ??
          MothlyUserPaymentModel(
            amunt: 0,
            date: '',
            month: MonthManager.getMonthName('aug'),
            isPaid: false,
            isOnlinePay: false,
          ),
      sep ??
          MothlyUserPaymentModel(
            amunt: 0,
            date: '',
            month: MonthManager.getMonthName('sep'),
            isPaid: false,
            isOnlinePay: false,
          ),
      oct ??
          MothlyUserPaymentModel(
            amunt: 0,
            date: '',
            month: MonthManager.getMonthName('oct'),
            isPaid: false,
            isOnlinePay: false,
          ),
      nov ??
          MothlyUserPaymentModel(
            amunt: 0,
            date: '',
            month: MonthManager.getMonthName('nov'),
            isPaid: false,
            isOnlinePay: false,
          ),
      dec ??
          MothlyUserPaymentModel(
            amunt: 0,
            date: '',
            month: MonthManager.getMonthName('dec'),
            isPaid: false,
            isOnlinePay: false,
          ),
    ];
  }

  YearlyUserPaymentModel({
    this.jan,
    this.feb,
    this.mar,
    this.apr,
    this.may,
    this.jun,
    this.jul,
    this.aug,
    this.sep,
    this.oct,
    this.nov,
    this.dec,
  });
  YearlyUserPaymentModel.fromjson(Map<dynamic, dynamic> json) {
    jan = json['jan'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['jan'],
          )
        : null;
    feb = json['feb'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['feb'],
          )
        : null;
    mar = json['mar'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['mar'],
          )
        : null;
    apr = json['apr'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['apr'],
          )
        : null;
    may = json['may'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['may'],
          )
        : null;
    jun = json['jun'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['jun'],
          )
        : null;
    jul = json['jul'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['jul'],
          )
        : null;
    aug = json['aug'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['aug'],
          )
        : null;
    sep = json['sep'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['sep'],
          )
        : null;
    oct = json['oct'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['oct'],
          )
        : null;
    nov = json['nov'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['nov'],
          )
        : null;
    dec = json['dec'] != null
        ? MothlyUserPaymentModel.fromjson(
            json['dec'],
          )
        : null;
  }
}
