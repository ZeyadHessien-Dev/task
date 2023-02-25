import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../color/colors.dart';
import '../styles/styles.dart';

class ThemeService {

  /// ==================================> *** Light Theme *** <=================================== ///

  final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: CustomColors.whiteColor,
    primaryColor: CustomColors.mainColor,

    /// AppBar Prop Here
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      color: CustomColors.whiteColor,
      titleTextStyle: TextStyles.titleAppBarLight,
      iconTheme: IconThemeData(color: CustomColors.blackColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: CustomColors.whiteColor,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),

    /// Text Theme Here
    textTheme: TextTheme(
        subtitle1: TextStyles.sourceSansProWhite,
        subtitle2: TextStyles.tajawalWhite,
        headline1: TextStyles.sourceSansProBlack,
        headline2: TextStyles.tajawalBlack),
  );
}
