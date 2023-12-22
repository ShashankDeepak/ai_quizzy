import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({super.key, required this.text, required this.onTap});
  final String text;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height * 0.065,
      // width: width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: Constant.buttonGradient(),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(22),
          onTap: onTap,
          child: Center(child: Constant.text(text, fontSize: 20)),
        ),
      ),
    );
  }
}
