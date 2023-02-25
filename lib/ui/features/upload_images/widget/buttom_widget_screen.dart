import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/color/colors.dart';
import '../../../../utils/constants/string.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.upload,
          color: CustomColors.whiteColor,
        ),
        SizedBox(width: 8.w),
        Text(
          Strings.upload,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    );
  }
}
