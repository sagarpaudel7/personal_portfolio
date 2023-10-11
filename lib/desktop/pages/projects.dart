import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/desktop/utils/heading_text_style.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  List<bool> isHover = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 120,
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
          SizedBox(
            //     height: MediaQuery.of(context).size.height * 1.8,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 600,
                childAspectRatio: 1.0,
                mainAxisSpacing: 50,
                crossAxisSpacing: 50,
              ),
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {},
                  onHover: (value) {
                    isHover[index] = value;
                    setState(() {});
                  },
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFf0a0e21),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                            width: 2,
                            color: isHover[index]
                                ? const Color(0xFF01EEFF)
                                : Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg",
                              fit: BoxFit.contain,
                              height: 400,
                              width: 400,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              "This is my project ${index + 1}",
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
