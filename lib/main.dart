import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/end_screen/view/end_screen.dart';
import 'package:quiz_app/main_menu/view/main_menu_screen.dart';
import 'package:quiz_app/question/view_model/question_screen_view_model.dart';

import 'question/view/question_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<QuestionScreenViewModel>(
            create: (_) => QuestionScreenViewModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: MainMenuScreen.tag,
        routes: {
          MainMenuScreen.tag: (_) => const MainMenuScreen(),
          QuestionScreen.tag: (_) => const QuestionScreen(),
          EndScreen.tag: (_) => const EndScreen()
        },
      ),
    );
  }
}
