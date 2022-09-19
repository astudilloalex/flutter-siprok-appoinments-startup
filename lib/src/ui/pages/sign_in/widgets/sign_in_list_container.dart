import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siprok_appointments/src/ui/pages/sign_in/widgets/sign_in_form.dart';
import 'package:siprok_appointments/src/ui/utilities/screen/screen_info.dart';

/// Contains the sign in form and other widgets of the left side.
class SignInListContainer extends StatelessWidget {
  /// Define a [SignInListContainer] widget.
  const SignInListContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // If phone.
    final bool phone = ScreenInfo.instance.phone(context);
    // Widget list.
    final List<Widget> widgets = [
      const SizedBox(height: 56.0),
      ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 250.0),
        child: Image.asset('assets/images/logos/siprok_logo.png'),
      ),
      const SizedBox(height: 16.0),
      Text(
        'welcomeBack'.tr,
        style: const TextStyle(fontSize: 20.0),
      ),
      const SizedBox(height: 16.0),
      ConstrainedBox(
        constraints: BoxConstraints(maxWidth: phone ? double.infinity : 350.0),
        child: const SignInForm(),
      ),
      const SizedBox(height: 16.0),
    ];
    // Widget.
    return Column(
      children: [
        Expanded(
          child: Scrollbar(
            thumbVisibility: !phone && kIsWeb,
            child: ListView.builder(
              primary: true,
              itemBuilder: (_, index) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: widgets[index],
                  ),
                );
              },
              itemCount: widgets.length,
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        Text('Copyright © ${DateTime.now().year} Siprok'),
        const SizedBox(height: 5.0),
      ],
    );
  }
}
