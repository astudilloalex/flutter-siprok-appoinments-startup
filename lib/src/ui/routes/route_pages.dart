import 'package:get/get.dart';
import 'package:siprok_appointments/src/app/middlewares/auth_middleware.dart';
import 'package:siprok_appointments/src/ui/pages/pages.dart';
import 'package:siprok_appointments/src/ui/routes/route_names.dart';

/// Contains all page containers.
class RoutePages {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  const RoutePages._();

  /// Returns the list of pages.
  static List<GetPage<dynamic>> get pages {
    return [
      GetPage(
        binding: const DashboardBinding(),
        middlewares: [
          AuthMiddleware(),
        ],
        name: RouteNames.dashboard,
        page: () => const DashboardPage(),
      ),
      GetPage(
        binding: const HomeBinding(),
        name: RouteNames.home,
        page: () => const HomePage(),
      ),
      GetPage(
        binding: const SignInBinding(),
        name: RouteNames.signIn,
        page: () => const SignInPage(),
      ),
    ];
  }

  /// Returns the unknown page.
  static GetPage<dynamic> get unknown {
    return GetPage(
      binding: const UnknownBinding(),
      name: RouteNames.unknown,
      page: () => const UnknownPage(),
    );
  }
}
