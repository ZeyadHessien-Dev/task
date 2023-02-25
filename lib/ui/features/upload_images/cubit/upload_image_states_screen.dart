abstract class UploadImageStates {}

/// Init Image State
class InitialImageState extends UploadImageStates {}

/// UPLOAD ONE IMAGE
class UploadImageLoadingState extends UploadImageStates {}

class UploadImageSuccessState extends UploadImageStates {}

class UploadImageErrorState extends UploadImageStates {
  final String error;

  UploadImageErrorState({required this.error});
}

