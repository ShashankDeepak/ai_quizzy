import 'package:ai_quizzy/constants/constants.dart';
import 'package:ai_quizzy/controller/user_provider.dart';
import 'package:ai_quizzy/views/widgets/upcoming_quiz_widget.dart';
import 'package:ai_quizzy/views/widgets/your_challenges_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late GoRouter router;

  @override
  void initState() {
    router = GoRouter.of(context);
    super.initState();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: Drawer(
          child: SizedBox(
            height: height,
            width: width * 0.2,
            child: const Text(
              "Hello",
            ),
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: accentColor),
          title: Constant.text(
            "HOME",
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                icon: Icon(
                  Icons.menu_outlined,
                  color: accentColor,
                  size: 30,
                ),
                onPressed: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                },
              ),
            )
          ],
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Consumer<UserProvider>(builder: (context, value, child) {
              return CircleAvatar(
                radius: 20,
                foregroundImage: NetworkImage(value.userModel.avatar),
              );
            }),
          ),
          leadingWidth: width * 0.14,
        ),
        backgroundColor: black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    print("Navigate to ai question generator");
                  },
                  child: Container(
                    height: height * 0.15,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/ai_quiz_banner.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: width * 0.55,
                                child: Constant.text(
                                  "Be quiz ready for any topic you like using our dynamic quiz AI",
                                  fontSize: height * 0.017,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Constant.text(
                                    "Try Now",
                                    fontSize: height * 0.017,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Icon(
                                      Icons.arrow_forward_outlined,
                                      color: white,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Lottie.asset(
                            "assets/Lottie/robot.json",
                            fit: BoxFit.fitHeight,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Constant.text(
                    "Upcoming Popular Quiz",
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: width / 2.8,
                  width: width,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: UpcomingQuizWidget(
                          dateTime: DateTime.now(),
                          description:
                              "non irure ad est dolor tempor dolore aute Duis enim non irure Duis consequat qui exercitation cupidatat in lorem est est reprehenderit officia esse nulla culpa aute id in magna anim magna dolor veniam irure anim cillum fugiat dolor ea do labore ut ut non ea tempor sint lorem",
                          duration: "1m",
                          hardness: "Hard",
                          image:
                              "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSMj2zEQAZpoqJQe9LmFF6mOew2OgwPSpHOQMyYizMuD8JtrTyO",
                          title: "Albert Einstein",
                        ),
                        // child: UpcomingPopularQuizWidgetShimmer(),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Constant.text(
                    "Daily Challenge",
                    fontSize: 20,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Navigate to daily challenge");
                  },
                  child: Container(
                    height: height * 0.15,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/956981/milky-way-starry-sky-night-sky-star-956981.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: width * 0.8,
                                child: Constant.text(
                                  "Test your space exploration knowledge by solving our today’s daily challenge",
                                  fontSize: height * 0.02,
                                ),
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5.0,
                                    horizontal: 10,
                                  ),
                                  child: Constant.text(
                                    "Try Now",
                                    fontSize: height * 0.014,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Constant.text(
                    "Your Upcoming Challenges",
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: width,
                  height: 3 * (height * 0.12),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return YourChallenges(
                        dateTime: DateTime.now(),
                        description:
                            "non irure ad est dolor tempor dolore aute Duis enim non irure Duis consequat qui exercitation cupidatat in lorem est est reprehenderit officia esse nulla culpa aute id in magna anim magna dolor veniam irure anim cillum fugiat dolor ea do labore ut ut non ea tempor sint lorem",
                        duration: "1m",
                        hardness: "Hard",
                        image:
                            "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSMj2zEQAZpoqJQe9LmFF6mOew2OgwPSpHOQMyYizMuD8JtrTyO",
                        title: "Albert Einstein",
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
