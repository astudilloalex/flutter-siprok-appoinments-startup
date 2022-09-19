import 'package:get/get.dart';
import 'package:siprok_appointments/src/ui/pages/dashboard/dashboard_controller.dart';

class DashboardBinding implements Bindings {
  const DashboardBinding();

  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
  }
}
