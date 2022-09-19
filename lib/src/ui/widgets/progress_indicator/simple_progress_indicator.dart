import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siprok_appointments/src/ui/theme/app_theme_colors.dart';

class SimpleProgressIndicator extends StatelessWidget {
  const SimpleProgressIndicator({
    super.key,
    this.backgroundColor,
  });

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final AppThemeColors colors =
        Theme.of(context).extension<AppThemeColors>()!;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator.adaptive(
            backgroundColor: backgroundColor,
            valueColor: AlwaysStoppedAnimation<Color>(colors.primary),
          ),
          const SizedBox(height: 10.0),
          Material(
            color: Colors.transparent,
            child: Text(
              'loading'.tr,
              style: TextStyle(
                color: backgroundColor,
                fontSize: 18.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
