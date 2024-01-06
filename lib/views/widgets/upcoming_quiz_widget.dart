import 'package:ai_quizzy/constants/constants.dart';
import 'package:ai_quizzy/views/widgets/shimmers/upcoming_popular_quiz_widget_shimer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UpcomingQuizWidget extends StatefulWidget {
  const UpcomingQuizWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.dateTime,
    required this.hardness,
    required this.duration,
  });
  final String id = "";
  final String image;
  final String title;
  final String description;
  final DateTime dateTime;
  final String hardness;
  final String duration;

  @override
  State<UpcomingQuizWidget> createState() => _UpcomingQuizWidgetState();
}

class _UpcomingQuizWidgetState extends State<UpcomingQuizWidget>
    with TickerProviderStateMixin {
  bool descriptionVisible = false;
  // AnimationController? animationController;
  double? sizedBoxWidth;
  bool imageLoadingCompleted = false;

  @override
  Widget build(BuildContext context) {
    // var height = getHeight(context);
    var width = getWidth(context);
    return SizedBox(
      width: sizedBoxWidth ?? width / 2.8,
      height: width / 2.8,
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              AnimatedPadding(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
                onEnd: () {
                  if (!descriptionVisible) {
                    setState(() {
                      sizedBoxWidth = null;
                    });
                  }
                },
                padding:
                    EdgeInsets.only(left: descriptionVisible ? width / 2.8 : 0),
                child: SizedBox(
                  width: width / 2.8,
                  height: width / 2.8,
                  child: Stack(
                    fit: StackFit.expand,
                    clipBehavior: Clip.hardEdge,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: !descriptionVisible
                              ? const Radius.circular(20)
                              : Radius.zero,
                          bottomRight: const Radius.circular(10),
                          topRight: const Radius.circular(10),
                          topLeft: !descriptionVisible
                              ? const Radius.circular(20)
                              : Radius.zero,
                        ),
                        child: DecoratedBox(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 34, 34, 34),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: (width / 2.8) * 0.8,
                                  height: (width / 2.8) * 0.4,
                                  child: Constant.text(
                                    widget.description,
                                    fontSize: width * 0.025,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 4,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Date: ",
                                        style: Constant.textStyle(
                                          fontSize: width * 0.025,
                                          color: accentColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: DateFormat("dd-MM-yyyy : HH:MM")
                                            .format(
                                          widget.dateTime,
                                        ),
                                        style: Constant.textStyle(
                                          fontSize: width * 0.025,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Hardness: ",
                                        style: Constant.textStyle(
                                          fontSize: width * 0.025,
                                          color: accentColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: widget.hardness,
                                        style: Constant.textStyle(
                                          color: getHardnessColor(
                                            widget.hardness,
                                          ),
                                          fontSize: width * 0.025,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                InkWell(
                                  child: Container(
                                    height: 20,
                                    width: (width / 2.8),
                                    decoration: BoxDecoration(
                                      color: accentColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Constant.text(
                                        "More Info",
                                        fontSize: 10,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    descriptionVisible = !descriptionVisible;
                    sizedBoxWidth = (width / 2.8) * 2;
                  });
                },
                child: SizedBox(
                  width: width / 2.8,
                  height: width / 2.8,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: const Radius.circular(10),
                          bottomRight: descriptionVisible
                              ? Radius.zero
                              : const Radius.circular(10),
                          topRight: descriptionVisible
                              ? Radius.zero
                              : const Radius.circular(10),
                          topLeft: const Radius.circular(10),
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            CachedNetworkImage(
                              progressIndicatorBuilder:
                                  (context, url, progress) {
                                return const UpcomingPopularQuizWidgetShimmer();
                              },
                              imageUrl: widget.image,
                              fadeInDuration: const Duration(seconds: 0),
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            color: black.withOpacity(0.4),
                            height: (width / 2.8) * 0.25,
                            width: (width / 2.8) * 0.85,
                            child: Center(
                              child: IntrinsicHeight(
                                child: Constant.text(
                                  widget.title,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
