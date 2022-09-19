import 'package:get/get.dart';
import 'package:siprok_appointments/src/app/controllers/auth_controller.dart';

class AppBinding implements Bindings {
  const AppBinding();

  @override
  void dependencies() {
    Get.put<AuthController>(
      AuthController(),
      permanent: true,
    );
  }
}
