import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class UiHelper {
  static Future<T?> showCustomDialog<T>({
    required BuildContext context,
    required Widget dialog,
    bool barrierDismissible = true,
  }) {
    return showDialog<T>(
      context: context,
      builder: (_) => dialog,
      barrierDismissible: barrierDismissible,
    );
  }

  static Future<T?> showCustomBottomSheet<T>({
    required BuildContext context,
    required Widget child,
    bool isScrollControlled = false,
    bool isDismissible = true,
    bool enableDrag = true,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      builder: (_) => child,
      isScrollControlled: isScrollControlled,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
    );
  }

  static void showCustomSnackBar({
    required BuildContext context,
    required String message,
    Color? backgroundColor,
    Color? textColor,
    Duration? duration,
  }) {
    EasyLoading.dismiss();
    EasyLoading.instance
      ..toastPosition = EasyLoadingToastPosition.bottom
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorColor = Colors.white
      ..textColor = textColor ?? Colors.white
      ..backgroundColor = backgroundColor ?? Colors.black
      ..maskColor = Colors.transparent;
    EasyLoading.showToast(
      message,
      toastPosition: EasyLoadingToastPosition.bottom,
      maskType: EasyLoadingMaskType.custom,
      duration: duration ?? const Duration(seconds: 3),
    );
  }

  static Future<void> onLoading(BuildContext context) {
    EasyLoading.dismiss();
    EasyLoading.instance
      ..maskColor = Colors.black.withOpacity(0.5)
      ..loadingStyle = EasyLoadingStyle.dark;
    return EasyLoading.show(
      status: 'Loading...',
      maskType: EasyLoadingMaskType.custom,
    );
  }

  static void onFailure(BuildContext context, String message) {
    showCustomSnackBar(
      context: context,
      message: message,
      backgroundColor: Colors.red,
    );
  }

  static void onSuccess() {
    EasyLoading.dismiss();
  }
}
