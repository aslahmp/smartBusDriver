import 'package:flutter/material.dart';

import '../../../../../infastructure/utils/index.dart';

class ImageView extends StatelessWidget {
  const ImageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: SizedBox(
          height: 300,
          child: Image.asset(AppImages.mobileLogain),
        ),
      ),
    );
  }
}
