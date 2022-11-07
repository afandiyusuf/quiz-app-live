import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/question/view/question_screen.dart';

import 'widget/high_score_widget.dart';
import 'widget/profile_widget.dart';

class MainMenuScreen extends StatelessWidget {
  static const tag = "/main-menu";

  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.purpleBg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const ProfileWidget(),
              const SizedBox(
                height: 30,
              ),
              const HighScoreWidget(),
              const SizedBox(
                height: 40,
              ),
              Expanded(child: Image.asset("assets/splash_bg.png")),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Mulai Quiz dan raih Score tertinggi",
                style: GoogleFonts.lato(
                    color: Themes.purple1,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                width: double.infinity,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  onPressed: () {
                    Navigator.pushNamed(context, QuestionScreen.tag);
                  },
                  color: Themes.orange,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "START",
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 26),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
