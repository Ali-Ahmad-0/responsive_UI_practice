
import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.grey.shade400 , borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
