import 'package:driver/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../../infastructure/utils/index.dart';

class DriverDetails extends GetView<HomeController> {
  const DriverDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: AppConstants.padding),
        padding: EdgeInsets.all(AppConstants.padding),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.lightBlue1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Driver Details",
              style: AppTextStyles.regular.copyWith(
                color: AppColors.black,
              ),
            ),
            verticalSpace(10),
            TileDetails(
              isShowImage: true,
              endText: controller.driver.value.name,
              image: AppImages.personBlueCircle,
              title: "Name:",
            ),
            verticalSpace(10),
            TileDetails(
              isShowImage: true,
              endText: controller.driver.value.phoneNumber.toString(),
              image: AppImages.phoneBlueCircle,
              title: "Mobile Number:",
            ),
            verticalSpace(10),
            TileDetails(
              isShowImage: false,
              endText: controller.driver.value.email,
              image: AppImages.phoneBlueCircle,
              title: "Email:",
            ),
            verticalSpace(10),
            TileDetails(
              isShowImage: false,
              endText: controller.driver.value.busId.toString(),
              image: AppImages.phoneBlueCircle,
              title: "Vehicle Id:",
            ),
          ],
        ),
      ),
    );
  }
}

class TileDetails extends StatelessWidget {
  TileDetails(
      {required this.endText,
      required this.image,
      required this.title,
      this.titleTextStyle,
      required this.isShowImage,
      this.endTextStyle,
      this.endTextColor});
  final String title;
  final String image;
  final String endText;
  final Color? endTextColor;
  final TextStyle? titleTextStyle;
  final TextStyle? endTextStyle;
  final bool isShowImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              SizedBox(
                height: 30,
                child: isShowImage
                    ? Image.asset(image)
                    : SizedBox(
                        width: 30,
                      ),
              ),
              SizedBox(
                width: AppConstants.padding,
              ),
              Expanded(
                child: Text(
                  title,
                  style: titleTextStyle ??
                      AppTextStyles.extraBold.copyWith(
                        color: AppColors.black,
                      ),
                ),
              ),
            ],
          ),
        ),
        Text(
          endText,
          style: endTextStyle ??
              AppTextStyles.extraBold.copyWith(
                color: endTextColor ?? AppColors.lightBlue1,
              ),
        ),
      ],
    );
  }
}
