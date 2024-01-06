import 'package:ai_quizzy/constants/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class YourChallenges extends StatelessWidget {
  const YourChallenges(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      required this.dateTime,
      required this.hardness,
      required this.duration});
  final String id = "";
  final String image;
  final String title;
  final String description;
  final DateTime dateTime;
  final String hardness;
  final String duration;
  @override
  Widget build(BuildContext context) {
    var height = getHeight(context);
    var width = getWidth(context);
    return CachedNetworkImage(
      width: width,
      imageUrl: image,
      imageBuilder: (context, imageProvider) {
        return Stack(
          children: [
            ListTile(
              isThreeLine: true,
              leading: Container(
                height: height * 0.2,
                width: height * 0.1,
                decoration: BoxDecoration(
                  image:
                      DecorationImage(image: imageProvider, fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              title: Constant.text(
                title,
                fontWeight: FontWeight.bold,
              ),
              // isThreeLine: true,
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Constant.text(
                    description,
                    maxLines: 2,
                    fontSize: height * 0.015,
                    color: Colors.grey,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Duration : ",
                                style: Constant.textStyle(
                                  color: const Color.fromRGBO(255, 155, 14, 1),
                                  fontSize: height * 0.014,
                                ),
                              ),
                              TextSpan(
                                text: duration,
                                style: Constant.textStyle(
                                  fontSize: height * 0.014,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Constant.text(
                          getDateTimeOfQuiz(
                            dateTime,
                          ),
                          fontSize: height * 0.014,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
