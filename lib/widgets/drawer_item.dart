import 'package:flutter/material.dart';
import 'package:responsive_test/models/drawer_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawer});
  final DrawerModel drawer;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawer.icon, color: Colors.black54),
      title: Text(
        drawer.title,
        style: TextStyle(color: Colors.black, letterSpacing: 3),
      ),
    );
  }
}
