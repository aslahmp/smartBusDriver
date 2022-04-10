import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../../infastructure/utils/index.dart';
import '../../controllers/student_detail_controller.dart';

class UserDataView extends GetView<StudentDetailController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppConstants.padding),
      child: Row(
        children: [
          Hero(
            tag: controller.studentModel.id,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: CachedNetworkImageProvider(
                controller.studentModel.imageUrl,
              ),
              backgroundColor: Colors.transparent,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Id: ' + controller.studentModel.id,
                style: AppTextStyles.regular
                    .copyWith(fontSize: 15, color: AppColors.black),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Name: ' + controller.studentModel.name,
                style: AppTextStyles.regular
                    .copyWith(fontSize: 16, color: AppColors.black),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Email: ' + controller.studentModel.email,
                style: AppTextStyles.regular
                    .copyWith(fontSize: 15, color: AppColors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
