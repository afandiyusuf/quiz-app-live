import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/question/view/widget/custom_button.dart';
import 'package:quiz_app/question/view_model/question_screen_view_model.dart';

class EndScreen extends StatelessWidget {
  static const String tag = "/end-screen";

  const EndScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionScreenViewModel viewModel =
        context.watch<QuestionScreenViewModel>();
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Color(0xFF25125A), Color(0xFF443866)])),
        child: Column(
          children: [
            const Spacer(),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/coin.png"),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${viewModel.correctAnswer * 100}",
                        style: GoogleFonts.poppins(
                            fontSize: 47,
                            fontWeight: FontWeight.w700,
                            color: Themes.yellow),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Selesai, kamu menjawab dengan benar ${viewModel.correctAnswer} dari ${viewModel.totalQuiz} pertanyaan.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: Themes.purpleBg, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        label: "Mainkan Ulang",
                        borderColor: Themes.purpleBg,
                        fillColor: Themes.purpleBg,
                        textColor: Colors.white,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        label: "Kembali",
                        borderColor: Themes.purpleBg,
                      )
                    ],
                  ),
                ),
                const Positioned(
                  right: 30,
                  top: 30,
                  child: Icon(Icons.cancel_outlined),
                ),
              ],
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
