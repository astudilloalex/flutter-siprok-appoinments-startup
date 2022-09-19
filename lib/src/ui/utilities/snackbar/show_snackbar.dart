import 'package:get/get.dart';
import 'package:siprok_appointments/src/ui/widgets/snackbar/error_snackbar.dart';
import 'package:siprok_appointments/src/ui/widgets/snackbar/success_snackbar.dart';

/// Show a error snackbar.
SnackbarController showErrorSnackbar(String error) {
  if (Get.isSnackbarOpen) Get.closeCurrentSnackbar();
  return Get.showSnackbar(ErrorSnackbar(error));
}

/// Show a successful snackbar.
SnackbarController showSuccessSnackbar(String message) {
  if (Get.isSnackbarOpen) Get.closeCurrentSnackbar();
  return Get.showSnackbar(SuccessSnackbar(message));
}
