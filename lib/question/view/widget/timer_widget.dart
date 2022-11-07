import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class TimerWidget extends StatefulWidget {
  final Duration timer;

  const TimerWidget({Key? key, required this.timer}) : super(key: key);

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  double _width = 0;
  @override
  void initState() {
    Future.delayed(Duration.zero,(){
      setState(() {
        _width = MediaQuery.of(context).size.width-40;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width - 40,
          height: 10,
          decoration: BoxDecoration(
            color: Themes.grey,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Positioned(
          left: 0,
          child: AnimatedContainer(
            duration: widget.timer,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: _width,
            height: 10,
            decoration: BoxDecoration(
              color: Themes.purpleBg,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
      ],
    );
  }
}
