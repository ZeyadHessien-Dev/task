import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_demo/ui/features/upload_images/cubit/upload_image_cubit_screen.dart';
import 'package:my_demo/ui/features/upload_images/cubit/upload_image_states_screen.dart';
import 'package:my_demo/ui/widgets/custom_text/custom_text.dart';

import '../../../../utils/Images/images.dart';
import '../../../../utils/color/colors.dart';
import '../../../../utils/constants/string.dart';
import '../../../general/general.dart';
import '../../../widgets/button/button.dart';
import '../widget/buttom_widget_screen.dart';

class UploadImageScreen extends StatelessWidget {
  const UploadImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// StatusBar BackGround
    General.systemUIOverLay(
      statusBar: Colors.transparent,
      iconStatusBar: Brightness.dark,
    );

    return Scaffold(
      backgroundColor: CustomColors.whiteColor,
      body: BlocProvider(
        create: (context) => UploadImageCubit(),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 52.0.sp),
              child: Column(
                children: [
                  SizedBox(height: 216.h),
                  ElasticInRight(
                    child: Image.asset(
                      Images.niceImage,
                    ),
                  ),
                  SizedBox(height: 41.57.h),
                  ElasticInLeft(
                    child: CustomText(
                      Strings.titleUploadImageText,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 22),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  ElasticInLeft(
                    child: CustomText(
                      Strings.descUploadImageText,
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontSize: 18),
                    ),
                  ),
                  const Spacer(),
                  BlocConsumer<UploadImageCubit, UploadImageStates>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      var cubit = UploadImageCubit.get(context);
                      return ClickButton(
                        height: 54.h,
                        width: 232.w,
                        btnCenterWidget: const CustomButtonWidget(),
                        onPressed: () {
                          cubit.showDialogFunction(context);
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: 64.h,
                  ),
                ],
              ),
            ),
            BlocConsumer<UploadImageCubit, UploadImageStates>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state is UploadImageLoadingState) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: CustomColors.blackColor.withOpacity(.7),
                      child: General.circularIndicator());
                } else {
                  return const SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
