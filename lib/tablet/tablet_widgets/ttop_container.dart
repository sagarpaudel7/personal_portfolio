import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/icons.dart';
import 'package:animate_do/animate_do.dart';
import 'package:personal_portfolio/tablet/tablet_utils/ttop_container_text_style.dart';
import 'package:personal_portfolio/tablet/tablet_widgets/tbutton.dart';
import 'package:personal_portfolio/tablet/tablet_widgets/tcircle_avatar_icon.dart';
import 'package:personal_portfolio/tablet/tablet_widgets/tprofile_circle.dart';

class TopContainer extends StatefulWidget {
  const TopContainer({super.key});

  @override
  State<TopContainer> createState() => _TopContainerState();
}

class _TopContainerState extends State<TopContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        //======= for profile image ===========
        TabletCircle.tabletCircle(context),

        Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.12),
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
      ],
    );
  }
}
