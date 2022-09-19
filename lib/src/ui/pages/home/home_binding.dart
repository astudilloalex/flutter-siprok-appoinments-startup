import 'package:get/get.dart';
import 'package:siprok_appointments/src/ui/pages/home/home_controller.dart';

class HomeBinding implements Bindings {
  const HomeBinding();

  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
