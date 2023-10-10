import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/icons.dart';
import 'package:personal_portfolio/utils/top_container_text_style.dart';
import 'package:personal_portfolio/widgets/button.dart';
import 'package:personal_portfolio/widgets/circle_avatar_icon.dart';
import 'package:animate_do/animate_do.dart';
import 'package:personal_portfolio/widgets/profile_circle.dart';

class TopContainer extends StatefulWidget {
  const TopContainer({super.key});

  @override
  State<TopContainer> createState() => _TopContainerState();
}

class _TopContainerState extends State<TopContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 650,
      //  height: MediaQuery.of(context).size.height, //600,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                170, MediaQuery.of(context).size.height * .20, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
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
                        "and i'm a ",
                        style: NormalSubTetx.normalSubTetx(),
                      ),
                      ChangableText.changableText(
                        "Flutter App Developer",
                        "Figma to App Converter",
                        "Freelancer",
                        "BCA Student",
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
                  height: 40,
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
          ProfileCircle.profileCircle(),
        ],
      ),
    );
  }
}
