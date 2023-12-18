import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';

import 'package:sixjar/screens/onboardingscreen/secondonboardingscreen.dart';
import 'package:sixjar/screens/signuppage.dart';
import 'package:sixjar/screens/onboardingscreen/thirdonboardingscreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../googlefonts.dart';
import 'firstonboardingscreen.dart';
import 'fourthonboardingscreen.dart';

class OnBoardignScreen extends StatefulWidget {
  const OnBoardignScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardignScreen> createState() => _OnBoardignScreenState();
}

class _OnBoardignScreenState extends State<OnBoardignScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF94D8FF),
        body: Stack(
          children: [
            PageView(
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 3);
                });
              },
              controller: _controller,
              children: const [
                FirstOnBoardingScreen(),
                SecondOnBoardingScreen(),
                ThirdOnBoardingScreen(),
                FourthOnBoardingScreen(),
              ],
            ),
            Container(
              alignment: Alignment(0.h, 0.70.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(3);
                    },
                    child: Text(
                      "Skip",
                      style: myCustomTextStyle(),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: const SlideEffect(
                      radius: 4.0,
                      dotWidth: 24.0,
                      dotHeight: 16.0,
                      paintStyle: PaintingStyle.stroke,
                      strokeWidth: 1.5,
                      dotColor: Colors.grey,
                      activeDotColor: Color(0xFF7BBF14),
                    ),
                  ),

                  //next or done
                  onLastPage
                      ? GestureDetector(
                          onTap: () async {
                            final sign = GetStorage();
                            sign.write('user', 'logged');
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => const SignUpPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Done",
                            style: myCustomTextStyle(),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(microseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text(
                            "Next",
                            style: myCustomTextStyle(),
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
