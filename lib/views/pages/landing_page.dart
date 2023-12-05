import 'package:ai_quizzy/constants/constants.dart';
import 'package:ai_quizzy/routes/app_router_names.dart';
import 'package:ai_quizzy/views/widgets/landing_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final List<String> _texts = [];
  final List<ImageProvider> _images = [];
  final PageController _pageController =
      PageController(initialPage: 0, keepPage: true);
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _images.add(const AssetImage("assets/landing_page_1.png"));
    _images.add(const AssetImage("assets/landing_page_2.png"));
    _images.add(const AssetImage("assets/landing_page_3.png"));
    _texts.add(
        "Join large set of quizes from all around the globe or from your nearest event.");
    _texts
        .add("Create and manage quiz for your family, events or any occasion");
    _texts
        .add("Generate questions using our AI tool on any topic that you want");
  }

  @override
  void didChangeDependencies() {
    precacheImage(_images[0], context);
    precacheImage(_images[1], context);
    precacheImage(_images[2], context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    GoRouter router = GoRouter.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.8,
              width: width,
              child: PageView.builder(
                controller: _pageController,
                itemCount: _texts.length,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.bounceOut,
                  );
                },
                itemBuilder: (context, index) {
                  return LandingPageWidget(
                      imageProvider: _images[index % _texts.length],
                      text: _texts[index % _texts.length]);
                },
              ),
            ),
            SizedBox(
              height: height * 0.1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: List<Widget>.generate(
                        _texts.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: 9.0),
                          child: ClipRRect(
                            borderRadius: currentIndex == index
                                ? BorderRadius.circular(6)
                                : BorderRadius.circular(20),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeOut,
                              height: 10,
                              width: currentIndex == index ? 15 : 10,
                              decoration: BoxDecoration(
                                  // shape: currentIndex == index
                                  //     ? BoxShape.rectangle
                                  //     : BoxShape.circle,
                                  color: currentIndex == index
                                      ? accentColor
                                      : HexColor("CDA76E")),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 85,
                      child: ElevatedButton(
                        onPressed: () {
                          if (currentIndex == 2) {
                            router.pushNamed(RouteNames.regsiterRouter);
                          } else {
                            setState(() {
                              currentIndex = (currentIndex + 1);
                            });
                            _pageController.animateToPage(
                              currentIndex,
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.bounceOut,
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: secondyAccentColor),
                        child: Constant.text(
                            currentIndex != 2 ? "Next" : "Finish",
                            color: white),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
