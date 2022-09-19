import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:siprok_appointments/src/ui/theme/app_theme_colors.dart';
import 'package:siprok_appointments/src/ui/utilities/screen/screen_info.dart';

/// Side container.
class SignInSideContainer extends StatelessWidget {
  /// Define a [SignInSideContainer] widget.
  const SignInSideContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // Get class extension theme with colors.
    final AppThemeColors colors =
        Theme.of(context).extension<AppThemeColors>()!;
    // Current screen info.
    final ScreenInfo screenInfo = ScreenInfo.instance;
    final bool tablet = screenInfo.tablet(context);
    // Widget.
    return Container(
      height: screenInfo.height(context),
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/logos/kia_logo.svg',
            semanticsLabel: 'KIA Logo',
            color: colors.secondary,
            width: 150.0,
          ),
          const SizedBox(height: 5.0),
          Text(
            'administrativeSystem'.tr,
            style: TextStyle(
              color: colors.secondary,
              fontSize: tablet ? 25.0 : 30.0,
            ),
          ),
          Text(
            'postSaleAppointments'.tr,
            style: TextStyle(
              color: colors.secondary,
              fontSize: tablet ? 25.0 : 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
