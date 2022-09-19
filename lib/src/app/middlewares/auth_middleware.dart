import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siprok_appointments/src/app/services/auth_service.dart';
import 'package:siprok_appointments/src/ui/routes/route_names.dart';

class AuthMiddleware extends GetMiddleware {
  final AuthService _authService = Get.find<AuthService>();

  @override
  int? get priority => 0;

  @override
  RouteSettings? redirect(String? route) {
    return _authService.authenticated
        ? null
        : const RouteSettings(name: RouteNames.signIn);
  }
}
