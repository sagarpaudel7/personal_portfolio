import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/top_container_text_style.dart';

class TopContainer extends StatefulWidget {
  const TopContainer({super.key});

  @override
  State<TopContainer> createState() => _TopContainerState();
}

class _TopContainerState extends State<TopContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello it's me",
                    style: MainText.mainText(),
                  ),
                  Text(
                    "Sagar Paudel",
                    style: SubText.subText(),
                  ),
                  Row(
                    children: [
                      Text(
                        "And i'm a ",
                        style: NormalSubTetx.normalSubTetx(),
                      ),
                      ChangableText.changableText(
                        "Flutter Developer",
                        "Figma to App Converter",
                        "Freelancer",
                        "BCA Student",
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
