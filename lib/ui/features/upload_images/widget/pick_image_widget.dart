import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_demo/ui/features/upload_images/cubit/upload_image_cubit_screen.dart';

Widget pickImage(BuildContext context, bool imagePick) {
  return Column(
    children: [
      ListTile(
        onTap: () {
          if (imagePick) {
            UploadImageCubit.get(context).resultDialog(
              context,
              false,
            );
            Navigator.pop(context);
          }
        },
        leading: Text(
          'Open Gallery',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 14.sp,
              ),
        ),
        trailing: Icon(
          FontAwesomeIcons.rectangleXmark,
          color: Theme.of(context).textTheme.caption!.color,
        ),
        contentPadding: const EdgeInsets.all(0),
      ),
      ListTile(
        onTap: () {
          if (imagePick) {
            UploadImageCubit.get(context).resultDialog(
              context,
              true,
            );
            Navigator.pop(context);

          }
        },
        leading: Text(
          'Open Camera',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontSize: 14.sp,
              ),
        ),
        trailing: Icon(
          FontAwesomeIcons.camera,
          color: Theme.of(context).textTheme.caption!.color,
        ),
        contentPadding: const EdgeInsets.all(0),
      ),
    ],
  );
}
