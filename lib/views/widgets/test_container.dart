import 'package:flutter/material.dart';

class TestContainer extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final Widget? child;
  const TestContainer(
      {super.key,
      this.child,
      this.color = Colors.white,
      this.height = 100,
      this.width = 100});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: height,
      // width: width,
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
        ),
      ),
      child: child ?? const SizedBox.shrink(),
    );
  }
}
