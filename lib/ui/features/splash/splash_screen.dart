import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/Images/images.dart';
import '../../../utils/color/colors.dart';
import '../../../utils/constants/string.dart';
import '../../general/general.dart';
import '../../widgets/custom_text/custom_text.dart';
import '../upload_images/screen/upload_images_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// StatusBar BackGround
    General.systemUIOverLay(
      statusBar: Colors.transparent,
      iconStatusBar: Brightness.light,
    );

    /// Future [Delay]
    Future.delayed(const Duration(seconds: 3), () {
      General.navigateAndDeleteAll(
          context: context, page: const UploadImageScreen());
    });

    return Scaffold(
      backgroundColor: CustomColors.mainColor,
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.75),
        child: Column(
          children: [
            SizedBox(height: 60.h),

            /// UNIVERSITY IMAGES
            Row(
              children: [
                Image.asset(
                  Images.universityOne,
                ),
                const Spacer(),
                Image.asset(Images.universityTwo),
              ],
            ),

            SizedBox(height: 192.5.h),

            /// LOGO
            Image.asset(Images.logo),
            SizedBox(height: 24.27.h),
            CustomText(
              Strings.appName,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontSize: 27.sp),
            ),
            SizedBox(height: 4.5.h),
            CustomText(
              Strings.description,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontSize: 15.sp),
            ),
          ],
        ),
      ),
    );
  }
}
