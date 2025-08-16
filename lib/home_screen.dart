import 'package:flutter/material.dart';
import 'package:responsive_test/layouts/mobile_layout.dart';
import 'package:responsive_test/widgets/custom_drawer.dart';
import 'package:responsive_test/layouts/desktop_layout.dart';
import 'package:responsive_test/layouts/tablet_layout.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  GlobalKey<ScaffoldState> scafoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          onPressed: () {
            scafoldKey.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu, size: 32),
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: LayoutBuilder(
          builder: (context, Constraints) {
            if (Constraints.maxWidth < 600) {
              return MobileLayout();
            } else if (Constraints.maxWidth < 900) {
              return TabletLayout();
            } else {
              return DesktopLayout();
            }
          },
        ),
      ),
    );
  }
}
