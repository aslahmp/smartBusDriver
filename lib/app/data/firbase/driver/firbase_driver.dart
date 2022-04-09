import 'package:driver/app/data/models/driver/driver.model.dart';
import 'package:driver/infastructure/managers/index.dart';
import 'package:firebase_database/firebase_database.dart';

class FirbaseDriver {
  Future<Driver?> getDriver() async {
    var firbaseDb = FirebaseDatabase.instance.ref().child('drivers');
    var result = await firbaseDb.child(UserManager.userId).get();

    if (result.exists) {
      var resultUsers = result.value as Map;

      var driver = Driver.fromJson(resultUsers);

      return driver;
    }
    return null;
  }
}
