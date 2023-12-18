import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../googlefonts.dart';

class FirstOnBoardingScreen extends StatefulWidget {
  const FirstOnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<FirstOnBoardingScreen> createState() => _FirstOnBoardingScreenState();
}

class _FirstOnBoardingScreenState extends State<FirstOnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/firstonboardingsvg.svg",
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
                  "Just 5 minutes a day !",
                  textAlign: TextAlign.center,
                  style: onboardingTitle(),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Your Path to Financial Freedom",
              style: onboardingSubtitle(),
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
