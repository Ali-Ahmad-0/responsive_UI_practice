import 'package:flutter/material.dart';
import 'package:responsive_test/layouts/mobile_layout.dart';
import 'package:responsive_test/widgets/adabtive.dart';
import 'package:responsive_test/widgets/custom_drawer.dart';
import 'package:responsive_test/layouts/desktop_layout.dart';
import 'package:responsive_test/layouts/tablet_layout.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final GlobalKey<ScaffoldState> scafoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldKey,
      drawer: CustomDrawer(),
      appBar: MediaQuery.of(context).size.width <= 900
          ? AppBar(
              backgroundColor: Colors.black87,
              leading: IconButton(
                onPressed: () {
                  scafoldKey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu, size: 32),
                color: Colors.white,
              ),
            )
          : null,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Adabtive(
          mobileLayout: (context) => MobileLayout(),
          tableLayout: (context) => TabletLayout(),
          desktopLayout: (context) => DesktopLayout(),
        ),
      ),
    );
  }
}
