import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../managers/index.dart';

class DependencyInjection {
  static Future<void> initAppMain() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp();
    await UserManager.intUser();
  }
}
