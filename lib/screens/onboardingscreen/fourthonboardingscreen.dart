import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../googlefonts.dart';



class FourthOnBoardingScreen extends StatefulWidget {
  const FourthOnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<FourthOnBoardingScreen> createState() => _FourthOnBoardingScreenState();
}

class _FourthOnBoardingScreenState extends State<FourthOnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/fourthonboardingsvg.svg",
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
                  "Split Income !",
                  textAlign: TextAlign.center,
                  style: onboardingTitle(),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Customize your saving and spending",
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
