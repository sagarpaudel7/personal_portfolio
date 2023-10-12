import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

//========= for main tetx ================
class MainText {
  static TextStyle mainText() {
    return GoogleFonts.alegreya(
      //    letterSpacing: 3,
      color: Colors.white,
      fontSize: 27,
      fontWeight: FontWeight.bold,
    );
  }
}

//============ for subheading text =====================

class SubText {
  static TextStyle subText() {
    return GoogleFonts.tinos(
      //  letterSpacing: 2,
      color: Colors.white,
      fontSize: 40,
      fontWeight: FontWeight.bold,
    );
  }
}

//=============== for normal text near animation ===========
class NormalSubTetx {
  static TextStyle normalSubTetx() {
    return GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 27,
      fontWeight: FontWeight.bold,
    );
  }
}

//=============for animation text ====================
class DiffText {
  static TextStyle diffText(BuildContext context) {
    return GoogleFonts.poppins(
      color: const Color(0xFF01EEFF),
      letterSpacing: 1.5,
      shadows: [
        const Shadow(
          color: Color(0xFF01EEFF),
          blurRadius: 1.7,
        )
      ],
      fontSize: MediaQuery.of(context).size.width * 0.050,
      fontWeight: FontWeight.bold,
    );
  }
}

//============= for animated text of package =============

class ChangableText {
  static AnimatedTextKit changableText(
      BuildContext context, String text1, text2, text3, text4) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          text1,
          speed: const Duration(milliseconds: 100),
          textStyle: DiffText.diffText(context),
        ),
        TypewriterAnimatedText(
          text2,
          speed: const Duration(milliseconds: 100),
          textStyle: DiffText.diffText(context),
        ),
        TypewriterAnimatedText(
          text3,
          speed: const Duration(milliseconds: 100),
          textStyle: DiffText.diffText(context),
        ),
        TypewriterAnimatedText(
          text4,
          speed: const Duration(milliseconds: 100),
          textStyle: DiffText.diffText(context),
        ),
      ],
      repeatForever: true,
    );
  }
}
