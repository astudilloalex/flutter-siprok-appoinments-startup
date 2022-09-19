import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siprok_appointments/src/ui/widgets/progress_indicator/simple_progress_indicator.dart';

/// Show a overlay in the screen.
Future<T> showOverlay<T>(Future<T> Function() asyncFunction) {
  return Get.showOverlay(
    asyncFunction: asyncFunction,
    loadingWidget: const SimpleProgressIndicator(
      backgroundColor: Colors.white,
    ),
    opacity: 0.75,
  );
}
