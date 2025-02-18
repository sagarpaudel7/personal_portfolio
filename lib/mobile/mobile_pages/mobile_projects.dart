import 'package:flutter/material.dart';
import 'package:personal_portfolio/mobile/mobile_utils/theading_text_style.dart';
import 'package:personal_portfolio/mobile/mobile_utils/tproject_text_style.dart';
import 'package:personal_portfolio/mobile/mobile_widgets/tproject_chip.dart';

class TabletProjects extends StatefulWidget {
  const TabletProjects({super.key});

  @override
  State<TabletProjects> createState() => _TabletProjectsState();
}

class _TabletProjectsState extends State<TabletProjects> {
  List<Map<String, dynamic>> project = [
    {
      "hover": false,
      "proname": "SEO Specialist : Vik-rakennus",
      "proimage": "assets/images/projects/seo_specialist.jpg",
      "tech": [
        "SEO",
        "Google Analytics",
        "Keyword Research",
        "Content Strategy"
      ]
    },
    {
      "hover": false,
      "proname": "CHOICE : An ecommerce App",
      "proimage": "assets/images/projects/choice.png",
      "tech": ["Dart", "Flutter", "Firebase", "Android", "iOS"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.10,
      ),
      child: Column(
        children: [
          Text(
            "Projects",
            style: HeadingText.headingTextStyle(),
          ),
          const SizedBox(
            height: 40,
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 3 / 3,
              mainAxisSpacing: 50,
              crossAxisSpacing: 50,
            ),
            itemCount: project.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {},
                onHover: (value) {
                  project[index]["hover"] = value;
                  setState(() {});
                },
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFf0a0e21),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: project[index]["hover"]
                          ? const [
                              BoxShadow(
                                offset: Offset(-3, -3),
                                color: Color(0xFFFF5F15),
                                blurStyle: BlurStyle.outer,
                              ),
                              BoxShadow(
                                offset: Offset(3, 3),
                                color: Color(0xFFF0FFFF),
                                blurStyle: BlurStyle.outer,
                              ),
                            ]
                          : const [
                              BoxShadow(
                                offset: Offset(-3, -3),
                                color: Color(0xFFF0FFFF),
                                blurStyle: BlurStyle.outer,
                              ),
                              BoxShadow(
                                offset: Offset(3, 3),
                                color: Color(0xFF3F00FF),
                                blurStyle: BlurStyle.outer,
                              ),
                            ]),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          project[index]["proname"],
                          style: ProjectText.projectText(context),
                        ),
                        Wrap(
                          spacing: 8.0,
                          children: List<Widget>.from(
                            (project[index]["tech"] as List<dynamic>).map(
                              (tech) => ProjectChip.projectChip(
                                  context, tech.toString()),
                            ),
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 7 / 4,
                          child: Image.asset(
                            project[index]["proimage"],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
