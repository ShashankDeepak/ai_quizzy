import 'package:ai_quizzy/constants/constants.dart';
import 'package:flutter/material.dart';

class GoogleAuthButton extends StatelessWidget {
  const GoogleAuthButton({super.key, required this.text, required this.onTap});
  final String text;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height * 0.065,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: white,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(22),
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/google.png"),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Constant.text(text, fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
