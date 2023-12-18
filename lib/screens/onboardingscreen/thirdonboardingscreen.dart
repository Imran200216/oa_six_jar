import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../googlefonts.dart';

class ThirdOnBoardingScreen extends StatefulWidget {
  const ThirdOnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<ThirdOnBoardingScreen> createState() => _ThirdOnBoardingScreenState();
}

class _ThirdOnBoardingScreenState extends State<ThirdOnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: 36.w,
                left: 36.w,
              ),
              child: SvgPicture.asset(
                "assets/thirdonboardingsvg.svg",
                fit: BoxFit.cover,
                height: 300.h,
                width: 300.w,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  "Why choose 6 Jar App ?",
                  textAlign: TextAlign.center,
                  style: onboardingTitle(),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Secure your financial future,\n Peace of mind",
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
