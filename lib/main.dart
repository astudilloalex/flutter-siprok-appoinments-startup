import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siprok_appointments/src/app/app_binding.dart';
import 'package:siprok_appointments/src/app/services/auth_service.dart';
import 'package:siprok_appointments/src/localization/app_localization.dart';
import 'package:siprok_appointments/src/ui/routes/route_names.dart';
import 'package:siprok_appointments/src/ui/routes/route_pages.dart';
import 'package:siprok_appointments/src/ui/theme/app_theme_data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync<AuthService>(() => AuthService().init(), permanent: true);
  runApp(const MyApp());
}

/// The main widget of the app.
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      darkTheme: AppThemeData.dark,
      fallbackLocale: const Locale('es', 'EC'),
      getPages: RoutePages.pages,
      initialBinding: const AppBinding(),
      initialRoute: RouteNames.signIn,
      locale: Get.deviceLocale,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
        },
      ),
      theme: AppThemeData.light,
      translations: const AppLocalization(),
      unknownRoute: RoutePages.unknown,
    );
  }
}
