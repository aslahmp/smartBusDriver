import 'package:driver/app/modules/home/views/local.widgets/head.dart';
import 'package:driver/infastructure/utils/index.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'local.widgets/index.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Head(),
        actions: [DriverOnOffButtonAppBar()],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            WorkModeView(),
            verticalSpace(20),
            DriverDetails(),
            verticalSpace(20),
            ScanQr(),
            verticalSpace(20),
            SearchStudent(),
            verticalSpace(20),
            TextButton(
                onPressed: controller.logout,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logout,
                      size: 15,
                    ),
                    horizontalSpace(10),
                    Text('Logout'),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
