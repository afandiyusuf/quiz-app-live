import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/constants.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back",
              style: GoogleFonts.lato(color: Colors.white, fontSize: 10),
            ),
            Text(
              "Yusuf Afandi",
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white),
            )
          ],
        ),
        Spacer(),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(color: Themes.purple1, width: 2),
              borderRadius: BorderRadius.circular(100),
              color: Colors.white),
        )
      ],
    );
  }
}
