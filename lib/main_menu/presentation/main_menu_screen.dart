import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/main_menu/presentation/widget/high_score_widget.dart';
import 'package:quiz_app/main_menu/presentation/widget/profile_widget.dart';
import 'package:quiz_app/question/presetation/question_screen.dart';

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
              ProfileWidget(),
              SizedBox(
                height: 30,
              ),
              HighScoreWidget(),
              SizedBox(
                height: 40,
              ),
              Expanded(child: Image.asset("assets/splash_bg.png")),
              SizedBox(
                height: 15,
              ),
              Text(
                "Mulai Quiz dan raih Score tertinggi",
                style: TextStyle(
                    color: Themes.purple1,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                width: double.infinity,
                child: MaterialButton(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "START",
                      style: TextStyle(color: Colors.white, fontSize: 26),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  onPressed: () {
                    Navigator.pushNamed(context, QuestionScreen.tag);
                  },
                  color: Themes.orange,
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
