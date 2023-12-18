import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'package:sixjar/googlefonts.dart';
import 'package:sixjar/screens/notificaionpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              //hello name and notification
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello,",
                          style: homePageTitle(),
                        ),
                        Text(
                          "Imran B",
                          style: homePageTitle(),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const NotificationPage();
                        }));
                      },
                      child: Icon(
                        Icons.notifications,
                        color: Colors.grey.shade500,
                        size: 34,
                      ),
                    ),
                  ],
                ),
              ),
              //container to display the balance income
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 180.h,
                  width: 400.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFD4FC79),
                        Color(0xFF96E6A1),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircularPercentIndicator(
                            radius: 50,
                            lineWidth: 10,
                            backgroundColor: Colors.white,
                            maskFilter:
                                const MaskFilter.blur(BlurStyle.solid, 1.0),
                            linearGradient: const LinearGradient(
                              colors: [Colors.green, Colors.green],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            percent: 0.6,
                            circularStrokeCap: CircularStrokeCap.round,
                            animation: true,
                            animationDuration: 2000,
                            center: Text(
                              "60%",
                              style: GoogleFonts.montserrat(
                                color: Colors.green,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Balance",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.spMin,
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                "Rs.90,000",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 32.spMin,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 18,
                                child: Icon(
                                  Icons.arrow_downward_rounded,
                                  size: 26,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Income",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 18.spMin,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green,
                                    ),
                                  ),
                                  Text(
                                    "1,00,000",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 20.spMin,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 18,
                                child: Icon(
                                  Icons.arrow_upward,
                                  size: 26,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Expense",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 18.spMin,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Text(
                                    "1,000",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 20.spMin,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "List of Jars",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 22.spMin,
                      ),
                    ),
                  ],
                ),
              ),
              //List of jars
              SizedBox(
                height: 10.h,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //necessities
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40),
                              )),
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 400.h,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Necessities",
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xFFFFBE00),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24.spMin,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Container(
                                          height: 60.h,
                                          width: 180.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade200,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Rs. ${_sliderValue.toStringAsFixed(0)}",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontSize: 22.spMin,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Slider(
                                          value: _sliderValue,
                                          min: 0,
                                          max: 10000,
                                          thumbColor: const Color(0xFFFFBE00),
                                          activeColor: const Color(0xFFFFBE00),
                                          onChanged: (value) {
                                            setState(() {
                                              _sliderValue = value;
                                            });
                                          },
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Description',
                                            labelStyle: GoogleFonts.montserrat(
                                              color: Colors.grey.shade500,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.spMin,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.description,
                                              color: Color(0xFFFFBE00),
                                            ),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.green),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Related Tags',
                                            labelStyle: GoogleFonts.montserrat(
                                              color: Colors.grey.shade500,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.spMin,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.tag,
                                              color: Color(0xFFFFBE00),
                                            ),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.green),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 40.h,
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Cancel",
                                                  style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontSize: 18.spMin,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 40.h,
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: const Color(0xFFFFBE00),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Ok",
                                                  style: GoogleFonts.montserrat(
                                                    color: Colors.white,
                                                    fontSize: 18.spMin,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Container(
                          height: 140.h,
                          width: 140.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFFFBE00),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/piggylogo.svg",
                                height: 50.h,
                                width: 50.w,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Necessities",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.spMin,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //education
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40),
                              )),
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 400.h,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Education",
                                          style: GoogleFonts.montserrat(
                                            color: Colors.redAccent,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24.spMin,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Container(
                                          height: 60.h,
                                          width: 180.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade200,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Rs. ${_sliderValue.toStringAsFixed(0)}",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontSize: 22.spMin,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Slider(
                                          value: _sliderValue,
                                          min: 0,
                                          max: 10000,
                                          thumbColor: Colors.redAccent,
                                          activeColor: Colors.redAccent,
                                          onChanged: (value) {
                                            setState(() {
                                              _sliderValue = value;
                                            });
                                          },
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Description',
                                            labelStyle: GoogleFonts.montserrat(
                                              color: Colors.grey.shade500,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.spMin,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.description,
                                              color: Colors.redAccent,
                                            ),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.redAccent),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Related Tags',
                                            labelStyle: GoogleFonts.montserrat(
                                              color: Colors.grey.shade500,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.spMin,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.tag,
                                              color: Colors.redAccent,
                                            ),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.redAccent),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 40.h,
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Cancel",
                                                  style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontSize: 18.spMin,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 40.h,
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.redAccent,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Ok",
                                                  style: GoogleFonts.montserrat(
                                                    color: Colors.white,
                                                    fontSize: 18.spMin,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Container(
                          height: 140.h,
                          width: 140.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.redAccent,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/piggylogo.svg",
                                height: 50.h,
                                width: 50.w,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Education",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.spMin,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40),
                              )),
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 400.h,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Saving",
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xFFB96CE0),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24.spMin,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Container(
                                          height: 60.h,
                                          width: 180.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade200,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Rs. ${_sliderValue.toStringAsFixed(0)}",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontSize: 22.spMin,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Slider(
                                          value: _sliderValue,
                                          min: 0,
                                          max: 10000,
                                          thumbColor: const Color(0xFFB96CE0),
                                          activeColor: const Color(0xFFB96CE0),
                                          onChanged: (value) {
                                            setState(() {
                                              _sliderValue = value;
                                            });
                                          },
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Description',
                                            labelStyle: GoogleFonts.montserrat(
                                              color: Colors.grey.shade500,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.spMin,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.description,
                                              color: Color(0xFFB96CE0),
                                            ),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFB96CE0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Related Tags',
                                            labelStyle: GoogleFonts.montserrat(
                                              color: Colors.grey.shade500,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.spMin,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.tag,
                                              color: Color(0xFFB96CE0),
                                            ),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFB96CE0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 40.h,
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Cancel",
                                                  style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontSize: 18.spMin,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 40.h,
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: const Color(0xFFB96CE0),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Ok",
                                                  style: GoogleFonts.montserrat(
                                                    color: Colors.white,
                                                    fontSize: 18.spMin,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Container(
                          height: 140.h,
                          width: 140.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFB96CE0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/piggylogo.svg",
                                height: 50.h,
                                width: 50.w,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Saving",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.spMin,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40),
                              )),
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 400.h,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Investment",
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xFF2790F2),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24.spMin,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Container(
                                          height: 60.h,
                                          width: 180.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade200,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Rs. ${_sliderValue.toStringAsFixed(0)}",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontSize: 22.spMin,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Slider(
                                          value: _sliderValue,
                                          min: 0,
                                          max: 10000,
                                          thumbColor: const Color(0xFF2790F2),
                                          activeColor: const Color(0xFF2790F2),
                                          onChanged: (value) {
                                            setState(() {
                                              _sliderValue = value;
                                            });
                                          },
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Description',
                                            labelStyle: GoogleFonts.montserrat(
                                              color: Colors.grey.shade500,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.spMin,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.description,
                                              color: Color(0xFF2790F2),
                                            ),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF2790F2),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Related Tags',
                                            labelStyle: GoogleFonts.montserrat(
                                              color: Colors.grey.shade500,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.spMin,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.tag,
                                              color: Color(0xFF2790F2),
                                            ),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF2790F2),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 40.h,
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Cancel",
                                                  style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontSize: 18.spMin,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 40.h,
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: const Color(0xFF2790F2),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Ok",
                                                  style: GoogleFonts.montserrat(
                                                    color: Colors.white,
                                                    fontSize: 18.spMin,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Container(
                          height: 140.h,
                          width: 140.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF2790F2),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/piggylogo.svg",
                                height: 50.h,
                                width: 50.w,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Investment",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.spMin,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40),
                              )),
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 400.h,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Play",
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xFF1FD7BA),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24.spMin,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Container(
                                          height: 60.h,
                                          width: 180.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade200,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Rs. ${_sliderValue.toStringAsFixed(0)}",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontSize: 22.spMin,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Slider(
                                          value: _sliderValue,
                                          min: 0,
                                          max: 10000,
                                          thumbColor: const Color(0xFF1FD7BA),
                                          activeColor: const Color(0xFF1FD7BA),
                                          onChanged: (value) {
                                            setState(() {
                                              _sliderValue = value;
                                            });
                                          },
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Description',
                                            labelStyle: GoogleFonts.montserrat(
                                              color: Colors.grey.shade500,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.spMin,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.description,
                                              color: Color(0xFF1FD7BA),
                                            ),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF1FD7BA),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Related Tags',
                                            labelStyle: GoogleFonts.montserrat(
                                              color: Colors.grey.shade500,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.spMin,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.tag,
                                              color: Color(0xFF1FD7BA),
                                            ),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF1FD7BA),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 40.h,
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Cancel",
                                                  style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontSize: 18.spMin,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 40.h,
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: const Color(0xFF1FD7BA),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Ok",
                                                  style: GoogleFonts.montserrat(
                                                    color: Colors.white,
                                                    fontSize: 18.spMin,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Container(
                          height: 140.h,
                          width: 140.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF1FD7BA),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/piggylogo.svg",
                                height: 50.h,
                                width: 50.w,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Play",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.spMin,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                topLeft: Radius.circular(40),
                              )),
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height: 400.h,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Play",
                                          style: GoogleFonts.montserrat(
                                            color: const Color(0xFF4BDB26),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 24.spMin,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Container(
                                          height: 60.h,
                                          width: 180.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.grey.shade200,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Rs. ${_sliderValue.toStringAsFixed(0)}",
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontSize: 22.spMin,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Slider(
                                          value: _sliderValue,
                                          min: 0,
                                          max: 10000,
                                          thumbColor: const Color(0xFF4BDB26),
                                          activeColor: const Color(0xFF4BDB26),
                                          onChanged: (value) {
                                            setState(() {
                                              _sliderValue = value;
                                            });
                                          },
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Description',
                                            labelStyle: GoogleFonts.montserrat(
                                              color: Colors.grey.shade500,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.spMin,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.description,
                                              color: Color(0xFF4BDB26),
                                            ),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4BDB26),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            labelText: 'Related Tags',
                                            labelStyle: GoogleFonts.montserrat(
                                              color: Colors.grey.shade500,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.spMin,
                                            ),
                                            prefixIcon: const Icon(
                                              Icons.tag,
                                              color: Color(0xFF4BDB26),
                                            ),
                                            enabledBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            focusedBorder:
                                                const UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF4BDB26),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              height: 40.h,
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Cancel",
                                                  style: GoogleFonts.montserrat(
                                                    color: Colors.black,
                                                    fontSize: 18.spMin,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 40.h,
                                              width: 100.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: const Color(0xFF4BDB26),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Ok",
                                                  style: GoogleFonts.montserrat(
                                                    color: Colors.white,
                                                    fontSize: 18.spMin,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Container(
                          height: 140.h,
                          width: 140.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF4BDB26),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/piggylogo.svg",
                                height: 50.h,
                                width: 50.w,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Give",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.spMin,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
