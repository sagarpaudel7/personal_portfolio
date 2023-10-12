import 'package:flutter/material.dart';
import 'package:personal_portfolio/desktop/utils/contact_text_style.dart';
import 'package:personal_portfolio/desktop/widgets/elevated_button.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.10,
      ),
      child: Column(
        children: [
          const Divider(
            color: Colors.deepOrange,
            thickness: 3,
          ),
          const SizedBox(height: 50),
          Text(
            "Do you have any questions or ideas?",
            style: ContactTextStyle.contactTextStyle(
                MediaQuery.of(context).size.width * 0.012, Colors.grey),
          ),
          Text(
            "Let's Connect",
            style: ContactTextStyle.contactTextStyle(
                MediaQuery.of(context).size.width * 0.025, Colors.white),
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LinkButton.linkButton(
                  context,
                  "assets/images/svg_images/github.svg",
                  "sagarpaudel7",
                  "https://github.com/sagarpaudel7"),
              LinkButton.linkButton(
                  context,
                  "assets/images/svg_images/gmail.svg",
                  "sagarpaudel749@gmail.com",
                  "https://github.com/sagarpaudel7"),
            ],
          )
        ],
      ),
    );
  }
}
