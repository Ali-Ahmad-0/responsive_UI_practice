import 'package:flutter/material.dart';

class Adabtive extends StatelessWidget {
  const Adabtive({super.key, required this.mobileLayout, required this.tableLayout, required this.desktopLayout});
final WidgetBuilder mobileLayout , tableLayout , desktopLayout;
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth  < 600) {
                  return mobileLayout(context);
                } else if (constraints.maxWidth + 24 < 900) {
                  return tableLayout(context);
                } else {
                  return desktopLayout(context
                  );
                }
              },
            );
      }
    );
  }
}