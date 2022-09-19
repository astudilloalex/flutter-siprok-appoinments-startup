import 'package:get/get.dart';
import 'package:siprok_appointments/src/ui/pages/unknown/unknown_controller.dart';

class UnknownBinding implements Bindings {
  const UnknownBinding();

  @override
  void dependencies() {
    Get.lazyPut<UnknownController>(
      () => UnknownController(),
    );
  }
}
