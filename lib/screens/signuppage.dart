import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sixjar/screens/signinpage.dart';

import 'emailpasswordpage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AnimatedOpacity(
                  opacity: 1,
                  // 1.0 means fully opaque (visible), 0.0 means fully transparent (invisible).
                  duration: const Duration(seconds: 2),
                  // The duration of the fade animation.
                  curve: Curves.easeIn,
                  // The easing curve for the animation.

                  child: Image.asset(
                    "assets/signup.png",
                    height: 300.h,
                    width: 300.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.montserrat(
                    color: Colors.grey.shade700,
                    fontSize: 16.spMin,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return const SignInPage();
                        }));
                  },
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.montserrat(
                      color: Colors.green,
                      fontSize: 16.spMin,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              height: 50.h,
              width: 300.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xFF4D8BF4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Sign up with Google",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.spMin,
                      ),
                    ),
                    SizedBox(
                      width: 46.w,
                    ),
                    SvgPicture.asset(
                      "assets/google.svg",
                      height: 20.h,
                      width: 20.h,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Or",
                  style: GoogleFonts.montserrat(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const EmailPasswordPage();
                }));
              },
              child: Container(
                height: 50.h,
                width: 300.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xFF7BBF14),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Sign up with Email",
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.spMin,
                        ),
                      ),
                      SizedBox(
                        width: 46.w,
                      ),
                      const Icon(
                        Icons.mail,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.support_agent,
                      color: Colors.grey.shade500,
                      size: 30,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      "Support",
                      style: GoogleFonts.montserrat(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 32.w,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.report_problem,
                      color: Colors.grey.shade500,
                      size: 30,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      "Report Bug",
                      style: GoogleFonts.montserrat(
                        color: Colors.grey.shade500,
                        // color: const Color(0xFF7BBF14),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
