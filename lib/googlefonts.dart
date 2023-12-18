import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle myCustomTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      fontSize: 20.spMin,
      color: Colors.green,
      fontWeight: FontWeight.w500,
    ),
  );
}

TextStyle onboardingTitle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      fontSize: 22.spMin,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );
}

TextStyle onboardingSubtitle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      fontSize: 18.spMin,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF5B5B5B),
    ),
  );
}

TextStyle textfieldText() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      fontSize: 18.spMin,
      fontWeight: FontWeight.w500,
      color: Colors.green,
    ),
  );
}

TextStyle buttonText() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      fontSize: 18.spMin,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
}

TextStyle homePageTitle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      fontSize: 26.spMin,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );
}

TextStyle appBarTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontSize: 22.spMin,
    ),
  );
}

TextStyle textTextStyle() {
  return GoogleFonts.montserrat(
    textStyle: TextStyle(
      color: Colors.grey.shade400,
      fontWeight: FontWeight.w500,
      fontSize: 18.spMin,
    ),
  );
}
