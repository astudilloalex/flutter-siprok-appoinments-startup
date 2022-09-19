import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:siprok_appointments/src/ui/theme/app_theme_colors.dart';
import 'package:siprok_appointments/src/ui/utilities/screen/screen_info.dart';

/// The sidebar of the app.
class Sidebar extends StatelessWidget {
  /// Define a [Sidebar] widget.
  const Sidebar({
    super.key,
    this.endAnimation = true,
    this.isOpen = true,
    this.onPressedButton,
  });

  /// If animation finish.
  final bool endAnimation;

  /// If sidebar is open.
  final bool isOpen;

  /// Open close button callback.
  final VoidCallback? onPressedButton;

  @override
  Widget build(BuildContext context) {
    // Screen information.
    final ScreenInfo screenInfo = ScreenInfo.instance;
    final double height = screenInfo.height(context);
    // Colors of the app.
    final AppThemeColors colors =
        Theme.of(context).extension<AppThemeColors>()!;
    // Widget.
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: height,
      width: isOpen ? 270.0 : 60.0,
      color: colors.primary,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: AnimatedCrossFade(
                    duration: const Duration(milliseconds: 200),
                    secondChild: const SizedBox.shrink(),
                    firstChild: Text(
                      'home'.tr,
                      style: TextStyle(color: colors.secondary),
                    ),
                    crossFadeState: isOpen
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                  ),
                  leading: Icon(
                    Icons.home_outlined,
                    color: colors.secondary,
                  ),
                ),
                ListTile(
                  title: AnimatedCrossFade(
                    duration: const Duration(milliseconds: 200),
                    secondChild: const SizedBox.shrink(),
                    firstChild: Text(
                      'home'.tr,
                      style: TextStyle(color: colors.secondary),
                    ),
                    crossFadeState: isOpen
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                  ),
                  leading: Icon(
                    Icons.home_outlined,
                    color: colors.secondary,
                  ),
                ),
              ],
            ),
          ),
          IconButton(onPressed: onPressedButton, icon: Icon(Icons.close)),
        ],
      ),
    );
  }
}
