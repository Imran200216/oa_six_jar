import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../googlefonts.dart';

class SecondOnBoardingScreen extends StatefulWidget {
  const SecondOnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<SecondOnBoardingScreen> createState() => _SecondOnBoardingScreenState();
}

class _SecondOnBoardingScreenState extends State<SecondOnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/secondonboardingsvg.svg",
              fit: BoxFit.cover,
              height: 300.h,
              width: 300.w,
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  "Start Saving Today!",
                  textAlign: TextAlign.center,
                  style: onboardingTitle(),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Allocate Your Income into 6 jars for different purpose",
              style: onboardingSubtitle(),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
