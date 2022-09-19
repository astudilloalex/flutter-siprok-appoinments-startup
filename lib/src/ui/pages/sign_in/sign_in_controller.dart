import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siprok_appointments/src/app/controllers/auth_controller.dart';

/// Controller of the sign in page.
class SignInController extends GetxController {
  /// Define a [SignInController] class.
  SignInController({
    required this.authController,
  });

  /// Auth controller to manage a user in all app.
  final AuthController authController;

  /// Form key used to validate a form.
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  /// Controller for the username.
  final TextEditingController usernameController = TextEditingController();

  /// Controller for the user password.
  final TextEditingController passwordController = TextEditingController();

  // Reactive boolean value.
  final RxBool _visiblePassword = RxBool(false);

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  /// Change [visiblePassword] to true if false and vice versa.
  void changePasswordVisibility() {
    _visiblePassword(!_visiblePassword.value);
  }

  /// Communicate with [AuthController] to sign in with username and password.
  ///
  /// Returns a error message on exception, otherwise returns null.
  Future<String?> signIn() async {
    await Future.delayed(const Duration(seconds: 5));
    return null;
  }

  /// Returns if the password is visible.
  bool get visiblePassword => _visiblePassword.value;
}
