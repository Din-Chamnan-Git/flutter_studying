import 'package:flutter/material.dart';

class DemoAnimateIcon extends StatefulWidget {
  const DemoAnimateIcon({super.key});

  @override
  State<DemoAnimateIcon> createState() => __DemoAnimateIconState();
}

class __DemoAnimateIconState extends State<DemoAnimateIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _animatedController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animatedController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  bool videoPlay = false;

  void _IconsTap() {
    if (videoPlay == false) {
      _animatedController.forward();
      videoPlay = true;
    } else {
      _animatedController.reverse();
      videoPlay = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Center(
        child: GestureDetector(
          onTap: () {
            _IconsTap();
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _animatedController,
            size: 150,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
