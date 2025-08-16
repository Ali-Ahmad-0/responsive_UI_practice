
import 'package:flutter/material.dart';
import 'package:responsive_test/widgets/custom_item.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return CustomItem();
      },
    );
  }
}
