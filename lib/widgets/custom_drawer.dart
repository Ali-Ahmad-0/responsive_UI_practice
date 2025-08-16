import 'package:flutter/material.dart';
import 'package:responsive_test/models/drawer_model.dart';
import 'package:responsive_test/widgets/drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerModel> items = [
    DrawerModel(icon: Icons.home_filled, title: 'DASHBOARD'),
    DrawerModel(icon: Icons.settings, title: 'SETTINGS'),
    DrawerModel(icon: Icons.info, title: 'ABOUT'),
    DrawerModel(icon: Icons.logout, title: 'LOGOUT'),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.indigo,
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(Icons.favorite, color: Colors.white, size: 42),
          ),
          ListView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return DrawerItem(drawer: items[index]);
            },
          ),
        ],
      ),
    );
  }
}
