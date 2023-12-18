import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sixjar/languages.dart';
import 'package:sixjar/screens/buttoncurvenavigation/homepage.dart';
import 'package:sixjar/screens/onboardingscreen/onboardingscreen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final sign = GetStorage();
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          translations: Languages(),
          locale: const Locale('en', 'US'),
          fallbackLocale: const Locale('en', 'US'),
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: AnimatedSplashScreen(
        duration: 3000,
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/splashlogo.svg",
              height: 180,
              width: 180,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "6 Jar",
              style: GoogleFonts.montserrat(
                color: const Color(0xFF7BBF14),
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        nextScreen: sign.read('user') == null
            ? const OnBoardignScreen()
            : const HomePage(),
        splashIconSize: 250,
        splashTransition: SplashTransition.fadeTransition,
        animationDuration: const Duration(
          seconds: 1,
        ),
      ),
    );
  }
}
