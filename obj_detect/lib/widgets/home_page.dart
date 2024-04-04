import 'package:flutter/material.dart';
import 'package:obj_detect/model/screen_dim.dart';
import 'package:obj_detect/widgets/detector.dart';

/// [HomeView] stacks [DetectorWidget]
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenParams.screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      key: GlobalKey(),
      backgroundColor: Colors.black,
      appBar: AppBar(
          // title: Image.asset(
          //   'assets/images/tfl_logo.png',
          //   fit: BoxFit.contain,
          // ),
          title: Center(
              child: const Text(
        "Object Detection",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
      ))),
      body: const DetectorWidget(),
    );
  }
}
