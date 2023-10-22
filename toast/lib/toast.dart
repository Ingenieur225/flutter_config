library toast;

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Toast {
  loading() {
    return EasyLoading.show(maskType: EasyLoadingMaskType.black);
  }

  successToast(BuildContext context, String message) {
    return EasyLoading.showSuccess(
      message,
      maskType: EasyLoadingMaskType.black,
      duration: const Duration(seconds: 3),
    );
  }

  infoToast(BuildContext context, String message) {
    return EasyLoading.showToast(
      message,
      maskType: EasyLoadingMaskType.black,
      duration: const Duration(seconds: 3),
      toastPosition: EasyLoadingToastPosition.bottom,
    );
  }

  errorToast(BuildContext context, String message) {
    return EasyLoading.showError(
      message,
      maskType: EasyLoadingMaskType.black,
      duration: const Duration(seconds: 3),
    );
  }
}
