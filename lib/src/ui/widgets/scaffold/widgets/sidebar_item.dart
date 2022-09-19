import 'package:flutter/material.dart';

/// Sidebar item widget.
class SidebarItem extends StatelessWidget {
  /// Define a [SidebarItem] widget.
  const SidebarItem({
    super.key,
    this.children = const <Widget>[],
    this.iconData,
    this.sidebarOpen = true,
    required this.title,
  });

  /// The children to show under item.
  final List<Widget> children;

  /// The icon to show in the item.
  final IconData? iconData;

  /// If the sidebar is open.
  final bool sidebarOpen;

  /// The title to show in item.
  final String title;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: iconData == null ? null : Icon(iconData),
      title: Text(title),
    );
  }
}
