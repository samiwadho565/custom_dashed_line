library custom_dashed_line;

import 'package:flutter/material.dart';

class CustomDashedLine extends StatelessWidget {
  final double height;
  final double dashWidth;
  final double dashSpacing;
  final Color color;

  const CustomDashedLine({
    Key? key,
    this.height = 1,
    this.dashWidth = 5,
    this.dashSpacing = 3,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final dashCount =
            (constraints.maxWidth / (dashWidth + dashSpacing)).floor();

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: height,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
