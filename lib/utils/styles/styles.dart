// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../color/colors.dart';
//
// class TextStyles {
//   /// ------------------------------------------------------------------
//   /// White And Black Styles [Use It In Theme]
//   /// --------------------------------------------
//   /// White Styles
//   static TextStyle boldWhite = TextStyle(
//     fontFamily: "SourceSansPro",
//     color: CustomColors.whiteColor,
//     fontSize: 16.sp,
//   );
//
//   static TextStyle semiBoldWhite = TextStyle(
//     fontFamily: "SemiBold",
//     color: CustomColors.whiteColor,
//     fontSize: 16.sp,
//   );
//
//   static TextStyle mediumWhite = TextStyle(
//     fontFamily: "Medium",
//     color: CustomColors.whiteColor,
//     fontSize: 14.sp,
//   );
//
//   static TextStyle regularWhite = TextStyle(
//     fontFamily: "Regular",
//     color: CustomColors.whiteColor,
//     fontSize: 14.sp,
//   );
//
//   static TextStyle smallWhite = TextStyle(
//     fontFamily: "Small",
//     color: CustomColors.whiteColor,
//     fontSize: 14.sp,
//   );
//
//   /// BLACK Styles
//   static TextStyle boldBlack = TextStyle(
//     fontFamily: "Bold",
//     color: CustomColors.blackColor,
//     fontSize: 16.sp,
//   );
//
//   static TextStyle semiBoldBlack = TextStyle(
//     fontFamily: "SemiBold",
//     color: CustomColors.blackColor,
//     fontSize: 16.sp,
//   );
//
//   static TextStyle mediumBlack = TextStyle(
//     fontFamily: "Medium",
//     color: CustomColors.blackColor,
//     fontSize: 14.sp,
//   );
//
//   static TextStyle regularBlack = TextStyle(
//     fontFamily: "Regular",
//     color: CustomColors.blackColor,
//     fontSize: 14.sp,
//   );
//
//   static TextStyle smallBlack = TextStyle(
//     fontFamily: "Small",
//     color: CustomColors.blackColor,
//     fontSize: 14.sp,
//   );
//
//   /// ------------------------------------------------------------------
//   /// Style In APP Bar
//   /// --------------------
//
//   /// Light Mode
//   static TextStyle titleAppBarLight = TextStyle(
//     color: CustomColors.blackColor,
//     fontSize: 17.sp,
//     fontWeight: FontWeight.w600,
//   );
//
//   /// Dark Mode
//   static TextStyle titleAppBarDark = TextStyle(
//     color: CustomColors.whiteColor,
//     fontSize: 17.sp,
//     fontWeight: FontWeight.w600,
//   );
//
//
//   /// ------------------------------------------------------------------
//   /// Style In Text Form Field
//   /// --------------------------
//
//   /// Grey Style
//   static TextStyle textFormFieldLight = TextStyle(
//     color: CustomColors.greyColor,
//     fontSize: 15.sp,
//   );
//
//   static TextStyle textFormFieldDark = TextStyle(
//     color: CustomColors.whiteColor,
//     fontSize: 15.sp,
//   );
//
//
//
//
// /// IF YOU Wanna add any other static TextStyle But If There is a theme mode
// /// 1. Do 2 Style One To Light And OnE To Black
// /// 2. Add them to theme services
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../color/colors.dart';

class TextStyles {

  /// =======================================================================
  /// ========================== Styles     ===========================
  /// =======================================================================

  /// White Styles
  static TextStyle sourceSansProWhite = TextStyle(
    fontFamily: "SourceSansPro",
    color: CustomColors.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: 18.sp,
  );

  static TextStyle tajawalWhite = TextStyle(
    fontFamily: "Tajawal",
    color: CustomColors.whiteColor,
    fontSize: 16.sp,
  );


  /// Black Styles
  static TextStyle sourceSansProBlack = TextStyle(
    fontFamily: "SourceSansPro",
    color: CustomColors.blackColor,
    fontWeight: FontWeight.bold,
    fontSize: 18.sp,
  );

  static TextStyle tajawalBlack = TextStyle(
    fontFamily: "Tajawal",
    color: CustomColors.blackColor,
    fontSize: 16.sp,
  );


  /// =======================================================================
  /// ========================== Style In APP Bar ===========================
  /// =======================================================================

  /// Light Mode
  static TextStyle titleAppBarLight = TextStyle(
    color: CustomColors.blackColor,
    fontSize: 17.sp,
    fontWeight: FontWeight.w600,
  );

}
