import 'package:firebase_database/firebase_database.dart';

import '../../../../infastructure/managers/index.dart';

class FriebaseUser {
  var firbaseDb = FirebaseDatabase.instance.ref();
  Future<bool> checkUserExist(String phoneNumber) async {
    var user =
        await firbaseDb.child('driverPhoneNumbers').child(phoneNumber).get();
    if (user.value != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> setUser(String phoneNumber) async {
    var user =
        await firbaseDb.child('driverPhoneNumbers').child(phoneNumber).get();
    if (user.value != null) {
      await UserManager.setUserLoginStatus(true);
      await UserManager.saveUserId(user.value.toString());
      await UserManager.intUser();
    }
  }
}
