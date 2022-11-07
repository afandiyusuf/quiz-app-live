import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class HighScoreWidget extends StatelessWidget {
  const HighScoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Themes.purple1),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "RECENT QUIZ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "10.0000",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 32),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    "( High Score )",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  )
                ],
              )
            ],
          ),
          Spacer(),
          SizedBox(
            width: 50,
            child: Image.asset("assets/coin.png"),
          )
        ],
      ),
    );
  }
}
