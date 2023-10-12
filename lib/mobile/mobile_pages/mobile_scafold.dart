import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/mobile/mobile_pages/mobile_about.dart';
import 'package:personal_portfolio/mobile/mobile_pages/mobile_contact.dart';
import 'package:personal_portfolio/mobile/mobile_pages/mobile_projects.dart';
import 'package:personal_portfolio/mobile/mobile_pages/mobile_skills.dart';
import 'package:personal_portfolio/mobile/mobile_widgets/tnavbar.dart';
import 'package:personal_portfolio/mobile/mobile_widgets/ttop_container.dart';

class MobileScafold extends StatefulWidget {
  const MobileScafold({super.key});

  @override
  State<MobileScafold> createState() => _MobileScafoldState();
}

class _MobileScafoldState extends State<MobileScafold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF040914),
//appbar for mobile mode
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.20),
        leading: const NavBar(),
        leadingWidth: 200,
      ),
//for drawer in mobile mode
      endDrawer: Drawer(
        width: 270,
        child: ListView(
          children: [
            SizedBox(
              height: 200,
              child: DrawerHeader(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                  child: Column(
                    children: const [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile.png"),
                        maxRadius: 70,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "sagarpaudel749@gmail.com",
                        style: TextStyle(fontSize: 14, color: Colors.green),
                      ),
                    ],
                  )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                navButton("Home"),
                navButton("Skill"),
                navButton("Project"),
                navButton("About"),
                navButton("Contact"),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: const [
              SizedBox(
                height: 7,
              ),
              TopContainer(),
              SizedBox(
                height: 110,
              ),
              TabletSkillsPage(),
              SizedBox(
                height: 100,
              ),
              TabletProjects(),
              SizedBox(
                height: 80,
              ),
              TabletAboutPage(),
              SizedBox(
                height: 100,
              ),
              TabletContactMe(),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }

//for drawer items
  Widget navButton(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .020,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 10),
        child: Text(
          text,
          style: NavTextStyle.navStyle(),
        ),
      ),
    );
  }
}

//====== for nav items ===========
class NavTextStyle {
  static TextStyle navStyle() {
    return GoogleFonts.mukta(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }
}
