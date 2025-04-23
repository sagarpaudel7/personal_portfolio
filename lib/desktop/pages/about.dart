import 'package:flutter/material.dart';
import 'package:personal_portfolio/desktop/widgets/about_chip.dart';

import '../utils/heading_text_style.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.10,
      ),
      child: Column(
        children: [
          Text(
            "About me",
            style: HeadingText.headingTextStyle(),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.12),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png"),
                    minRadius: 80,
                    maxRadius: 170,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.020,
                        vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Introducing Myself",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.020,
                              color: const Color(0xFF00FFFF),
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Hello, I'm Sagar Paudel – A passionate Flutter developer who transforms ideas into real-world cross-platform mobile apps. I specialize in creating clean UIs, integrating REST APIs, and managing real-time data with Firebase. Alongside development, I also focus on Manual Quality Assurance to ensure app stability, usability, and performance. My approach blends technical precision with user-first design to deliver reliable and engaging app experiences.",
                          textAlign: TextAlign.justify,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 12,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.011,
                          ),
                        ),
                        AboutChip.aboutChip(
                            context,
                            Icons.cast_for_education,
                            Colors.blue,
                            "Education",
                            "Lumbini City College (Bachelor in Computer Application)"),
                        AboutChip.aboutChip(context, Icons.location_on,
                            Colors.green, "From", "Kapilvastu-Banganga, Nepal"),
                        AboutChip.aboutChip(
                            context,
                            Icons.filter_center_focus,
                            Colors.redAccent,
                            "Status",
                            "Focusing on learn Flutter + QA"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
