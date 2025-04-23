import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/icons.dart';
import 'package:personal_portfolio/desktop/utils/top_container_text_style.dart';
import 'package:personal_portfolio/desktop/widgets/button.dart';
import 'package:personal_portfolio/desktop/widgets/circle_avatar_icon.dart';
import 'package:animate_do/animate_do.dart';
import 'package:personal_portfolio/desktop/widgets/profile_circle.dart';

class TopContainer extends StatefulWidget {
  const TopContainer({super.key});

  @override
  State<TopContainer> createState() => _TopContainerState();
}

class _TopContainerState extends State<TopContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.10, 40,
          MediaQuery.of(context).size.width * 0.060, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInDown(
                  delay: const Duration(milliseconds: 300),
                  child: Text(
                    "Hello it's me",
                    style: MainText.mainText(),
                  ),
                ),

                FadeInDown(
                  delay: const Duration(milliseconds: 300),
                  child: Text(
                    "Sagar Paudel",
                    style: SubText.subText(),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                FadeInDown(
                  delay: const Duration(milliseconds: 300),
                  child: Row(
                    children: [
                      Text(
                        "and i'm a ",
                        style: NormalSubTetx.normalSubTetx(),
                      ),
                      ChangableText.changableText(
                        "Flutter App Developer",
                        "Wordpress Manager",
                        "Quality Assurance",
                        "Firebase/API Spec.",
                      ),
                    ],
                  ),
                ),
                //======== for circle icons ==================
                Row(
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
                const SizedBox(
                  height: 30,
                ),

                //========= for cv button ===============
                FadeInUp(
                  delay: const Duration(milliseconds: 300),
                  child: MainButton.mainButton(),
                )
              ],
            ),
          ),

          //======= for profile image ===========
          ProfileCircle.profileCircle(context),
        ],
      ),
    );
  }
}
