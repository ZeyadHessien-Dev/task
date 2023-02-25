// ignore_for_file: constant_identifier_names, use_build_context_synchronously

import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_demo/ui/widgets/custom_text/custom_text.dart';
import '../../utils/color/colors.dart';

class General {
  /// * [SystemUI]
  static void systemUIOverLay({
    required Color statusBar,
    required Brightness iconStatusBar,
  }) {
    return SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: statusBar,
      statusBarIconBrightness: iconStatusBar,
    ));
  }


  /// * [Dialog]
  static showAlertDialog({required BuildContext context, File? image}) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Padding(
            padding: const EdgeInsets.all(45.0),
            child: Column(
              children: [
                Image(
                  width: 181.w,
                  height: 130.h,
                  image: FileImage(image!),
                  fit: BoxFit.fill,
                ),
                Container(
                  width: 181.w,
                  height: 2,
                  color: CustomColors.greenColor,
                )
              ],
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children:  <Widget>[
                CustomText(
                  'The Result is : ',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 14.sp,
                      color: CustomColors.resultBlack
                  ),
                ),
                CustomText(
                  'Bengin',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 32.sp,
                      color: CustomColors.greenColor
                  ),
                ),              ],
            ),
          ),

          actions: [
            TextButton(
              child:  Text('Cancel',style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: 14.sp,
                color: CustomColors.redColor,
              )),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  /// * [Navigation]

  /// 1. Navigate To
  static Future<void> routingPage({
    required BuildContext context,
    required Widget page,
  }) async {
    Navigator.push(context, MaterialPageRoute(builder: (_) => page));
  }

  /// 2. Navigate Replacement
  static Future<void> routingPageWithReplacement({
    required BuildContext context,
    required Widget page,
  }) async {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => page));
  }

  /// 3. Navigate AND Delete
  static Future<void> navigateAndDeleteAll({
    required BuildContext context,
    required Widget page,
  }) async {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => page),
        (Route<dynamic> route) => false);
  }

  /// 4. Back
  static arrowBackFunction(BuildContext context) {
    Navigator.pop(context);
  }

  /// * [Tips]

  /// 1. Is Tablet
  static bool isTablet(context) {
    if (ScreenUtil().screenWidth > 600) {
      return true;
    } else {
      return false;
    }
  }

  /// 2. Icon Size Based on Size Of Screen
  static double iconSize() {
    if (ScreenUtil().screenWidth > 600) {
      return 40;
    } else {
      return 24;
    }
  }

  /// 3. DIVIDER
  static Widget myDivider({double? height, double? padding}) {
    return Column(
      children: [
        SizedBox(height: padding ?? 15.h),
        Container(
          decoration: BoxDecoration(
              color: CustomColors.offWhiteColor,
              borderRadius: BorderRadius.circular(5.w)),
          height: height ?? 2.h,
          width: ScreenUtil().screenWidth,
        ),
        SizedBox(height: padding ?? 15.h),
      ],
    );
  }

  /// 4. Indicator
  static Widget circularIndicator({Color? color, double? size}) {
    return SpinKitSpinningLines(
      color: color ?? CustomColors.mainColor,
      size: size ?? 170.0,
    );
  }


  /// 5. Print Long String
  static void printLongString(String text) {
    final RegExp pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern
        .allMatches(text)
        .forEach((RegExpMatch match) => debugPrint(match.group(0)));
  }

  /// 6. Responsive
  static screenUtilinit(context) {
    ScreenUtil.init(
      context,
      designSize: Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
    );
  }
}
