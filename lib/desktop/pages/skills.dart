import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/constants/images.dart';
import 'package:personal_portfolio/desktop/utils/heading_text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  List<Map<String, dynamic>> svgImageList = [
    {
      'imagePath': SvgImages.flutter,
      'name': "Flutter",
      "isHover": false,
    },
    {
      'imagePath': SvgImages.dart,
      'name': "Dart",
      "isHover": false,
    },
    {
      'imagePath': SvgImages.github,
      'name': "GitHub",
      "isHover": false,
    },
    {
      'imagePath': SvgImages.git,
      'name': "Git",
      "isHover": false,
    },
    {
      'imagePath': SvgImages.firebase,
      'name': "Firebase",
      "isHover": false,
    },
    {
      'imagePath': SvgImages.api,
      'name': "Rest API",
      "isHover": false,
    },
    {
      'imagePath': SvgImages.database,
      'name': "SQF lite",
      "isHover": false,
    },
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
            height: 40,
          ),
          SizedBox(
            //  height: 600,
            //    height: MediaQuery.of(context).size.height,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 270,
                childAspectRatio: 1.0,
                mainAxisSpacing: 50,
                crossAxisSpacing: 50,
              ),
              itemCount: svgImageList.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {},
                  onHover: (value) {
                    svgImageList[index]['isHover'] = value;
                    setState(() {});
                  },
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF040914),
                          shape: BoxShape.rectangle,
                          /*  border: Border.all(
                              width: 2,
                              color: isHover[index]
                                  ? const Color(0xFF01EEFF)
                                  : Colors.white), */
                          borderRadius: BorderRadius.circular(30),
                          // for neomorphic effect in skills container
                          boxShadow: svgImageList[index]['isHover']
                              ? const [
                                  BoxShadow(
                                    offset: Offset(-4, -4),
                                    color: Color(0xFFFF5F15),
                                    blurStyle: BlurStyle.outer,
                                  ),
                                  BoxShadow(
                                    offset: Offset(4, 4),
                                    color: Color(0xFFF0FFFF),
                                    blurStyle: BlurStyle.outer,
                                  ),
                                ]
                              : const [
                                  BoxShadow(
                                    offset: Offset(-4, -4),
                                    color: Color(0xFFF0FFFF),
                                    blurStyle: BlurStyle.outer,
                                  ),
                                  BoxShadow(
                                    offset: Offset(4, 4),
                                    color: Color(0xFF3F00FF),
                                    blurStyle: BlurStyle.outer,
                                  ),
                                ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            svgImageList[index]['imagePath'],
                            color: Colors.white,
                            width: 100,
                            height: 100,
                            //   color: Colors.amber,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              svgImageList[index]['name'],
                              style: GoogleFonts.alegreya(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      )),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
