import 'package:flutter/material.dart';
import 'package:personal_portfolio/tablet/tablet_utils/theading_text_style.dart';
import 'package:personal_portfolio/tablet/tablet_utils/tproject_text_style.dart';
import 'package:personal_portfolio/tablet/tablet_widgets/tproject_chip.dart';

class TabletProjects extends StatefulWidget {
  const TabletProjects({super.key});

  @override
  State<TabletProjects> createState() => _TabletProjectsState();
}

class _TabletProjectsState extends State<TabletProjects> {
  List<Map<String, dynamic>> project = [
    {
      "hover": false,
      "proname": "CHOICE : An ecommerce App",
      "proimage": "assets/images/projects/choice.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
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
              childAspectRatio: 4 / 3,
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
                        Row(
                          children: [
                            ProjectChip.projectChip(context, "Dart"),
                            ProjectChip.projectChip(context, "Flutter"),
                            ProjectChip.projectChip(context, "Firebase"),
                            ProjectChip.projectChip(context, "Android"),
                            ProjectChip.projectChip(context, "Ios"),
                          ],
                        ),
                        AspectRatio(
                          aspectRatio: w > 1000 ? 9 / 5.3 : 10 / 5.9,
                          child: Image.asset(
                            project[index]["proimage"],
                            fit: BoxFit.fill,
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
