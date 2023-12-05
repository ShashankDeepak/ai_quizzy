import 'package:ai_quizzy/constants/constants.dart';
import 'package:ai_quizzy/routes/app_router_names.dart';
import 'package:ai_quizzy/views/widgets/test_container.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isPasswordVisible = false;
  String _avatarSelected = Constant.shashankAvatar;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    GoRouter router = GoRouter.of(context);
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: black,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) {
                                      return SizedBox(
                                        height: height * 0.4,
                                        width: width,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      _avatarSelected =
                                                          Constant.divyaAvatar;
                                                    });
                                                  },
                                                  child: CircleAvatar(
                                                    radius: height * 0.05,
                                                    backgroundColor:
                                                        HexColor("FFF7F1"),
                                                    backgroundImage: AssetImage(
                                                        Constant.divyaAvatar),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      _avatarSelected =
                                                          Constant.krishnAvatar;
                                                    });
                                                  },
                                                  child: CircleAvatar(
                                                    radius: height * 0.05,
                                                    backgroundColor:
                                                        HexColor("FFF7F1"),
                                                    backgroundImage: AssetImage(
                                                        Constant.krishnAvatar),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      _avatarSelected =
                                                          Constant.ramAvatar;
                                                    });
                                                  },
                                                  child: CircleAvatar(
                                                    radius: height * 0.05,
                                                    backgroundColor:
                                                        HexColor("FFF7F1"),
                                                    backgroundImage: AssetImage(
                                                        Constant.ramAvatar),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      _avatarSelected = Constant
                                                          .sandhyaAvatar;
                                                    });
                                                  },
                                                  child: CircleAvatar(
                                                    radius: height * 0.05,
                                                    backgroundColor:
                                                        HexColor("FFF7F1"),
                                                    backgroundImage: AssetImage(
                                                        Constant.sandhyaAvatar),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      _avatarSelected = Constant
                                                          .sayaneeAvatar;
                                                    });
                                                  },
                                                  child: CircleAvatar(
                                                    radius: height * 0.05,
                                                    backgroundColor:
                                                        HexColor("FFF7F1"),
                                                    backgroundImage: AssetImage(
                                                        Constant.sayaneeAvatar),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      _avatarSelected = Constant
                                                          .shashankAvatar;
                                                    });
                                                  },
                                                  child: CircleAvatar(
                                                    radius: height * 0.05,
                                                    backgroundColor:
                                                        HexColor("FFF7F1"),
                                                    backgroundImage: AssetImage(
                                                      Constant.shashankAvatar,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: CircleAvatar(
                                radius: height * 0.1,
                                backgroundColor: HexColor("FFF7F1"),
                                backgroundImage: AssetImage(_avatarSelected),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30.0),
                              child: TextFormField(
                                style: Constant.textStyle(
                                  color: white,
                                ),
                                cursorColor: accentColor,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(12),
                                  hintText: "Username",
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
                              child: Container(
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
                                    onTap: () {},
                                    child: Center(
                                        child: Constant.text("Register",
                                            fontSize: 20)),
                                  ),
                                ),
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
                            Container(
                              height: height * 0.065,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                border: Border.all(
                                  color: white,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/google.png"),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Constant.text("Register With Google",
                                        fontSize: 15),
                                  )
                                ],
                              ),
                            ),
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
                              text: "Already a member? ",
                            ),
                            TextSpan(
                              text: "Log In",
                              style: Constant.textStyle(color: accentColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () =>
                                    router.pushNamed(RouteNames.loginRouter),
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
