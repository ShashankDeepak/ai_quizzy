import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class UpcomingPopularQuizWidgetShimmer extends StatelessWidget {
  const UpcomingPopularQuizWidgetShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        period: const Duration(milliseconds: 800),
        enabled: true,
        direction: ShimmerDirection.ltr,
        child: Container(
          height: MediaQuery.sizeOf(context).width / 2.8,
          width: MediaQuery.sizeOf(context).width / 2.8,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
        ));
  }
}
