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
                    "Hello, I'm Sagar Paudel – A dedicated SEO Specialist who turns data into organic growth. I specialize in keyword research, technical SEO audits, link auditing, on-page and off-page optimization, competitor analysis, and WordPress management. I leverage tools like Ahrefs, Semrush, Screaming Frog, Google Analytics 4, and Google Search Console to drive measurable results. Additionally, I bring experience in Flutter mobile app development, blending technical expertise with creative innovation.",
                    textAlign: TextAlign.left,
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
                      Colors.redAccent, "Status", "Focusing on learn SEO"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
