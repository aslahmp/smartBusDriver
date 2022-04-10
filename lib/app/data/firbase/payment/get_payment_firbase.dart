import 'package:firebase_database/firebase_database.dart';
import 'package:result_type/result_type.dart';

class GetPaymentFirbase {
  var firbaseDb = FirebaseDatabase.instance.ref().child('monthlyPayment');
  Future<Result> getUserYearPayment({
    required String userId,
    required int year,
  }) async {
    var result = await firbaseDb.child(userId).child(year.toString()).get();
    if (result.exists) {
      return Success(result.value);
    }
    return Failure('');
  }
}
