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
        //======= for profile circle ===========
        TabletCircle.tabletCircle(context),

        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              FadeInDown(
                delay: const Duration(milliseconds: 300),
                child: Text(
                  "And i'm a ",
                  style: NormalSubTetx.normalSubTetx(),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              FadeInDown(
                delay: const Duration(milliseconds: 300),
                child: ChangableText.changableText(
                  context,
                  "SEO Specialist",
                  "Wordpress Manager",
                  "SEO Content Specialist",
                  "Flutter App Developer",
                ),
              ),
              //======== for circle icons ==================
              CircleIcons.circleIcons(),
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

class CircleIcons {
  static circleIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleIcon.circleIcon(PngIcons.github, const Color(0xFF01EEFF)),
        CircleIcon.circleIcon(PngIcons.facebook, const Color(0xFF01EEFF)),
        CircleIcon.circleIcon(PngIcons.insta, const Color(0xFF01EEFF)),
        CircleIcon.circleIcon(PngIcons.linkedin, const Color(0xFF01EEFF)),
      ],
    );
  }
}
