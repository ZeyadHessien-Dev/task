import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/color/colors.dart';
import '../../../../utils/styles/styles.dart';


Future customDialog({
  required BuildContext context,
  required String title,
  required Widget body,
  String? actionButton,
  var actionOnPressed,
  var afterDismiss,
  bool buttonEnabled = true,
}) async {
  return await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Text(title.tr(),
                    style: Theme.of(context).textTheme.bodyText1)),
            const SizedBox(
              height: 15,
            ),
            body,
            const SizedBox(
              height: 15,
            ),
            buttonEnabled == true
                ? GestureDetector(
              onTap: actionOnPressed,
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  decoration: BoxDecoration(
                      color: CustomColors.mainColor,
                      borderRadius:
                      const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Text(
                    actionButton!.tr(),
                    style: const TextStyle(
                        color: Colors.white, fontSize: 16.0),
                  ),
                ),
              ),
            )
                : const SizedBox(),
          ],
        ),
        contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 7.0,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(15.0.r),
              ),
              child: Text(
                'Cancel',
                style: TextStyles.tajawalWhite,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      );
    },
  ) /*.then(afterDismiss)*/;
}
