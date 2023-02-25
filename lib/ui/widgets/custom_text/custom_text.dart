// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  TextStyle? style;

  CustomText(this.text, {super.key, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr(),
      style: style,
      textAlign: TextAlign.center,
    );
  }
}
