import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/icons.dart';
import 'package:personal_portfolio/constants/images.dart';
import 'package:personal_portfolio/utils/top_container_text_style.dart';
import 'package:personal_portfolio/widgets/circle_avatar_icon.dart';
import 'package:animate_do/animate_do.dart';

class TopContainer extends StatefulWidget {
  const TopContainer({super.key});

  @override
  State<TopContainer> createState() => _TopContainerState();
}

class _TopContainerState extends State<TopContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(170, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInDown(
                  delay: const Duration(milliseconds: 300),
                  child: Text(
                    "Hello it's me",
                    style: MainText.mainText(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: FadeInDown(
                    delay: const Duration(milliseconds: 300),
                    child: Text(
                      "Sagar Paudel",
                      style: SubText.subText(),
                    ),
                  ),
                ),
                FadeInDown(
                  delay: const Duration(milliseconds: 300),
                  child: Row(
                    children: [
                      Text(
                        "And i'm a ",
                        style: NormalSubTetx.normalSubTetx(),
                      ),
                      ChangableText.changableText(
                        "Flutter Developer",
                        "Figma to App Converter",
                        "Freelancer",
                        "BCA Student",
                      ),
                    ],
                  ),
                ),
                FadeInLeft(
                  delay: const Duration(milliseconds: 300),
                  child: Row(
                    children: [
                      CircleIcon.circleIcon(
                          PngIcons.github, const Color(0xFF01EEFF)),
                      CircleIcon.circleIcon(
                          PngIcons.facebook, const Color(0xFF01EEFF)),
                      CircleIcon.circleIcon(
                          PngIcons.insta, const Color(0xFF01EEFF)),
                      CircleIcon.circleIcon(
                          PngIcons.linkedin, const Color(0xFF01EEFF)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                FadeInUp(
                  delay: const Duration(milliseconds: 300),
                  child: MaterialButton(
                    onPressed: () {},
                    height: 40,
                    minWidth: 100,
                    color: const Color(0xFF00EEFF),
                    hoverColor: Colors.deepOrange,
                    elevation: 5,
                    splashColor: const Color(0xFF040914),
                    focusElevation: 10,
                    focusColor: Colors.white,
                    shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      " Download CV",
                      style: TextStyle(
                        color: Color(0xFFffffff),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 200, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Image.asset(
                ProfileImage.profileImage,
                height: 350,
                width: 350,
              ),
            ),
          )
        ],
      ),
    );
  }
}
