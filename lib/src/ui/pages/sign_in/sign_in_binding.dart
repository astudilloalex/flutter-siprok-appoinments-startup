import 'package:get/get.dart';
import 'package:siprok_appointments/src/app/controllers/auth_controller.dart';
import 'package:siprok_appointments/src/ui/pages/sign_in/sign_in_controller.dart';

class SignInBinding implements Bindings {
  const SignInBinding();

  @override
  void dependencies() {
    Get.lazyPut<SignInController>(
      () => SignInController(authController: Get.find<AuthController>()),
    );
  }
}
