import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/constants/images.dart';
import 'package:personal_portfolio/utils/heading_text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  List svgImageList = [
    SvgImages.flutter,
    SvgImages.dart,
    SvgImages.github,
    SvgImages.git,
    SvgImages.firebase,
    SvgImages.api,
    SvgImages.database,
  ];
  List svgImageName = [
    "Flutter",
    "Dart",
    "GitHub",
    "Git",
    "Firebase",
    "Rest API",
    "Database"
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 120,
        vertical: 30,
      ),
      child: Column(
        children: [
          Text(
            "Skills",
            style: HeadingText.headingTextStyle(),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 220,
                childAspectRatio: 1.0,
                mainAxisSpacing: 50,
                crossAxisSpacing: 50,
              ),
              itemCount: svgImageList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFf0a0e21),
                      shape: BoxShape.rectangle,
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          svgImageList[index],
                          color: Colors.white,
                          width: 100,
                          height: 100,
                          //   color: Colors.amber,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            svgImageName[index],
                            style: GoogleFonts.alegreya(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
