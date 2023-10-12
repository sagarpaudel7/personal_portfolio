import 'package:flutter/material.dart';
import 'package:personal_portfolio/mobile/mobile_utils/theading_text_style.dart';
import 'package:personal_portfolio/mobile/mobile_widgets/tabout_chip.dart';

class TabletAboutPage extends StatelessWidget {
  const TabletAboutPage({super.key});

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
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.050,
                  vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Introducing Myself",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.021,
                        color: const Color(0xFF00FFFF),
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hello, I'm Sagar Paudel, representing Nepal. With a solid knowledge of application development, particularly with Flutter, I'm on a journey of knowledge and innovation, seeking connections with fellow developers and industry professionals.\nI'm looking to collaborate and embark on an exciting path of growth and technology advancement together, driven by my passion for app development technology. I invite you to explore my portfolio and join me in shaping the future of tech through collaboration, learning, and innovation.",
                    textAlign: TextAlign.justify,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 12,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.015,
                    ),
                  ),
                  AboutChip.aboutChip(
                      context,
                      Icons.cast_for_education,
                      Colors.blue,
                      "Education",
                      "Lumbini City College (Bachelor in Computer Application)"),
                  AboutChip.aboutChip(context, Icons.location_on, Colors.green,
                      "From", "Kapilvastu-Banganga, Nepal"),
                  AboutChip.aboutChip(context, Icons.filter_center_focus,
                      Colors.redAccent, "Status", "Focusing on learn Flutter"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
