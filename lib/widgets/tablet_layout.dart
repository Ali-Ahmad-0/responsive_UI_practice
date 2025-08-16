import 'package:flutter/material.dart';
import 'package:responsive_test/widgets/custom_sliverList.dart';
import 'package:responsive_test/widgets/grid_view.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return CustomSliverGrid(crossAxisCount: 4);
            },
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        CustomSliverList(),
      ],
    );
  }
}