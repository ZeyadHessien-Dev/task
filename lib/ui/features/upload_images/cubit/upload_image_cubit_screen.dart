// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_demo/ui/features/upload_images/cubit/upload_image_states_screen.dart';

import '../../../general/general.dart';
import '../widget/custom_dialog.dart';
import '../widget/pick_image_widget.dart';

class UploadImageCubit extends Cubit<UploadImageStates> {
  UploadImageCubit() : super(InitialImageState());

  static UploadImageCubit get(context) => BlocProvider.of(context);

  /// Vars
  File? imagePick;
  ImagePicker picker = ImagePicker();

  /// Show Dialog
  Future<void> showDialogFunction(BuildContext context) async {
    customDialog(
      title: 'Pick Image',
      body: pickImage(context, true),
      context: context,
      buttonEnabled: false,
    );
  }


  /// Upload Image And Show Dialog That Determine Bengin Or Not
  Future<void> resultDialog(BuildContext context, bool isCamera) async {
    emit(UploadImageLoadingState());

    /// Camera Or Gallery
    Future.delayed(
      const Duration(
        seconds: 2,
      ),
    ).then((value) async {
      final XFile? imagePickPhoto;
      if (isCamera) {
        imagePickPhoto = await picker.pickImage(
          source: ImageSource.camera,
        );
      } else {
        imagePickPhoto = await picker.pickImage(
          source: ImageSource.gallery,
        );
      }

      /// Check And Show Dialog
      if (imagePickPhoto != null) {
        imagePick = File(imagePickPhoto.path);
        emit(UploadImageSuccessState());
        General.showAlertDialog(
          context: context,
          image: imagePick,
        );
      }
    });
  }
}
