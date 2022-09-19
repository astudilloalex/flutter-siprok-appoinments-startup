import 'package:flutter/material.dart';
import 'package:siprok_appointments/src/ui/widgets/scaffold/widgets/sidebar.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    bool sidebarOpen = true;
    return Scaffold(
      body: Row(
        children: [
          StatefulBuilder(
            builder: (_, setState) {
              return Sidebar(
                isOpen: sidebarOpen,
                onPressedButton: () => setState(
                  () => sidebarOpen = !sidebarOpen,
                ),
              );
            },
          ),
          Expanded(child: body),
        ],
      ),
    );
  }
}
