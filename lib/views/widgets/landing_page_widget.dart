import 'package:ai_quizzy/constants/constants.dart';
import 'package:flutter/material.dart';

class LandingPageWidget extends StatelessWidget {
  const LandingPageWidget(
      {super.key, required this.imageProvider, required this.text});

  final ImageProvider imageProvider;
  final String text;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: imageProvider,
          height: height * 0.3,
          width: width * 0.6,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          child: Constant.text(
            text,
            color: white,
            fontSize: 18,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
