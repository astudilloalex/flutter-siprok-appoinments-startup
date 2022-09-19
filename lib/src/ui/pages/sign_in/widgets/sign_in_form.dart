import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siprok_appointments/src/ui/pages/sign_in/sign_in_controller.dart';
import 'package:siprok_appointments/src/ui/routes/route_names.dart';
import 'package:siprok_appointments/src/ui/utilities/overlay/show_overlay.dart';
import 'package:siprok_appointments/src/ui/utilities/snackbar/show_snackbar.dart';

/// Form that contains the username, password input and sign in button.
class SignInForm extends StatelessWidget {
  /// Define a [SignInForm] widget.
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    // Find controller.
    final SignInController controller = Get.find<SignInController>();
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          // Username input.
          TextFormField(
            controller: controller.usernameController,
            decoration: InputDecoration(
              labelText: 'username'.tr,
            ),
          ),
          const SizedBox(height: 16.0),
          // Password input wrap with reactive builder.
          Obx(() {
            return TextFormField(
              controller: controller.passwordController,
              decoration: InputDecoration(
                labelText: 'password'.tr,
                // Icon button to change password visibility.
                suffixIcon: IconButton(
                  onPressed: controller.changePasswordVisibility,
                  icon: Icon(
                    controller.visiblePassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  splashRadius: 20.0,
                ),
              ),
              obscureText: !controller.visiblePassword,
            );
          }),
          const SizedBox(height: 32.0),
          // Sign in button.
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => _signIn(controller),
              child: Text('signIn'.tr),
            ),
          ),
        ],
      ),
    );
  }

  // Connect with controller to sign in, on error show message.
  void _signIn(SignInController controller) {
    if (!controller.formKey.currentState!.validate()) return;
    showOverlay(() async {
      final String? error = await controller.signIn();
      if (error != null) {
        showErrorSnackbar(error);
      } else {
        Get.offNamed(RouteNames.dashboard);
      }
    });
  }
}
