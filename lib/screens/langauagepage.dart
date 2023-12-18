import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 26,
          ),
        ),
        title: const Text("Language"),
        titleTextStyle: GoogleFonts.montserrat(
          fontSize: 22.spMin,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        backgroundColor: Colors.green.shade400,
        // flexibleSpace: Container(
        //   decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.bottomLeft,
        //       end: Alignment.bottomRight,
        //       colors: [
        //         Color(0xFFD4FC79),
        //         Color(0xFF96E6A1),
        //       ],
        //     ),
        //   ),
        // ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text(
              "message".tr,
            ),
            subtitle: Text(
              "name".tr,
            ),
          ),
        ],
      ),
    );
  }
}
