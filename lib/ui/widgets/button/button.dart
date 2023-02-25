import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/color/colors.dart';



class ClickButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final double? width;
  final double? height;
  final BoxDecoration? decoration;
  final Color? textColor;
  final Color? btnColor;
  final Widget? btnCenterWidget;
  final bool loading;

  const ClickButton(
      {Key? key,
      this.text = "",
      required this.onPressed,
      this.width,
      this.height,
      this.decoration,
      this.textColor,
      this.btnColor,
      this.btnCenterWidget,
      this.loading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: onPressed,
      child: ElasticInLeft(
        duration: const Duration(milliseconds: 1000,),
        child: Container(
          width: width ?? 0.9.sw,
          height: height ?? (1.sw < 600 ? 0.06.sh : 0.08.sh),
          decoration: decoration ??
              BoxDecoration(
                color: btnColor ?? CustomColors.mainColor,
                borderRadius: BorderRadius.circular(25.r),
              ),
          child: Center(
            child: btnCenterWidget ??
                Text(
                  text,
                  style: theme.textTheme.subtitle1!.copyWith(
                      color: CustomColors.whiteColor
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
