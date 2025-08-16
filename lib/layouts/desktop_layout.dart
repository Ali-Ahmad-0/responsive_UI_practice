import 'package:flutter/material.dart';
import 'package:responsive_test/layouts/tablet_layout.dart';
import 'package:responsive_test/widgets/custom_desktop_section.dart';
import 'package:responsive_test/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(flex: 3, child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: TabletLayout(),
        )),
        Expanded(flex: 1, child: CustomDesktopSection()),
      ],
    );
  }
}
