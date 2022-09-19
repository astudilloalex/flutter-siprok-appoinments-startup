import 'package:flutter/material.dart';
import 'package:siprok_appointments/src/ui/pages/sign_in/widgets/sign_in_list_container.dart';
import 'package:siprok_appointments/src/ui/pages/sign_in/widgets/sign_in_side_container.dart';
import 'package:siprok_appointments/src/ui/utilities/screen/screen_info.dart';

/// Sign in page.
class SignInPage extends StatelessWidget {
  /// Define a [SignInPage] widget.
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Screen info of the current page.
    final ScreenInfo screenInfo = ScreenInfo.instance;
    final bool tablet = screenInfo.tablet(context);
    final bool desktop = screenInfo.desktop(context);
    // Widget.
    return Scaffold(
      body: tablet || desktop
          ? Row(
              children: [
                const Expanded(child: SignInSideContainer()),
                SizedBox(
                  width: desktop ? 382.0 : 300.0,
                  child: const SignInListContainer(),
                ),
              ],
            )
          : const SignInListContainer(),
    );
  }
}
