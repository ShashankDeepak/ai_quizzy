import 'package:ai_quizzy/constants/constants.dart';
import 'package:ai_quizzy/routes/app_router_names.dart';
import 'package:ai_quizzy/views/widgets/test_container.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/auth_google_button.dart';
import '../widgets/gradient_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    GoRouter router = GoRouter.of(context);
    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop) async {
          router.pushReplacementNamed(RouteNames.landingPage);
          return;
        },
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: black,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/Logo/logo.png',
                              height: height * 0.2,
                              width: height * 0.2,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'assets/Logo/name.png',
                              height: height * 0.1,
                              width: width * 0.6,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 22.0),
                              child: TextFormField(
                                style: Constant.textStyle(
                                  color: white,
                                ),
                                cursorColor: accentColor,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(12),
                                  hintText: "Email Address",
                                  hintStyle: Constant.textStyle(
                                    color: white,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: accentColor,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: accentColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 22.0),
                              child: TextFormField(
                                style: Constant.textStyle(
                                  color: white,
                                ),
                                obscureText: !_isPasswordVisible,
                                cursorColor: accentColor,
                                decoration: InputDecoration(
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isPasswordVisible =
                                            !_isPasswordVisible;
                                      });
                                    },
                                    child: Icon(
                                      _isPasswordVisible
                                          ? Icons.visibility_off_outlined
                                          : Icons.visibility_outlined,
                                      color: secondyAccentColor,
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.all(12),
                                  hintText: "Password",
                                  hintStyle: Constant.textStyle(
                                    color: white,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: accentColor,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: accentColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25.0),
                              child: GradientButton(
                                text: "Login",
                                onTap: () {},
                              ),
                            ),
                            Row(
                              children: [
                                const Flexible(
                                  child: Divider(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 20),
                                  child: Constant.text("OR"),
                                ),
                                const Flexible(child: Divider())
                              ],
                            ),
                            GoogleAuthButton(
                              onTap: () {},
                              text: "Login with google",
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: RichText(
                        text: TextSpan(
                          style: Constant.textStyle(fontSize: 12),
                          children: [
                            const TextSpan(
                              text: "New here? Let us get you ",
                            ),
                            TextSpan(
                              text: "registered",
                              style: Constant.textStyle(color: accentColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => router.pushNamed(
                                      RouteNames.regsiterRouter,
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
