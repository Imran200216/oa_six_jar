import 'package:country_picker/country_picker.dart';
import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sixjar/screens/buttoncurvenavigation/curve_naviagation_bar.dart';

import '../googlefonts.dart';
import 'buttoncurvenavigation/homepage.dart';

class CurrrencyPage extends StatefulWidget {
  const CurrrencyPage({Key? key}) : super(key: key);

  @override
  State<CurrrencyPage> createState() => _CurrrencyPageState();
}

class _CurrrencyPageState extends State<CurrrencyPage> {
  final _currencyValidate = GlobalKey<FormState>();
  TextEditingController countryUser = TextEditingController();
  TextEditingController currencyUser = TextEditingController();
  final TextEditingController _country = TextEditingController();
  final TextEditingController _currency = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: _currencyValidate,
          child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: [
              GestureDetector(
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/currrencysvg.svg",
                              height: 200.h,
                              width: 200.w,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 14.h,
                            ),
                            Text(
                              "A penny saved is a penny earned",
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18.spMin,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Pick your Country and Currency to manage your incomes",
                              style: GoogleFonts.montserrat(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 14.h,
                            ),
                            TextFormField(
                              validator: (countryUser) {
                                if (countryUser!.isEmpty &&
                                    countryUser != null) {
                                  return "Enter your Country";
                                }
                              },
                              controller: _country,
                              decoration: InputDecoration(
                                labelText: "Country",
                                labelStyle: textfieldText(),
                                hintText: "Enter Your Country",
                                hintStyle: GoogleFonts.montserrat(),
                                prefixIcon: const Icon(
                                  Icons.flag,
                                  color: Colors.grey,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              onTap: () {
                                showCountryPicker(
                                  context: context,
                                  favorite: <String>['IN'],
                                  onSelect: (Country country) {
                                    setState(() {
                                      _country.text = country.name;
                                    });
                                  },
                                  countryListTheme: CountryListThemeData(
                                    textStyle: GoogleFonts.montserrat(
                                      fontSize: 18.spMin,
                                    ),
                                    searchTextStyle: GoogleFonts.montserrat(
                                      fontSize: 18.spMin,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                    bottomSheetHeight: 500,
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            TextFormField(
                              validator: (currencyUser) {
                                if (currencyUser!.isEmpty &&
                                    currencyUser != null) {
                                  return "Enter your Currency";
                                }
                              },
                              controller: _currency,
                              decoration: InputDecoration(
                                labelText: "Currency",
                                labelStyle: textfieldText(),
                                hintText: "Enter Your Currency",
                                hintStyle: GoogleFonts.montserrat(),
                                prefixIcon: const Icon(
                                  Icons.currency_rupee,
                                  color: Colors.grey,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              onTap: () {
                                showCurrencyPicker(
                                  context: context,
                                  onSelect: (Currency currency) {
                                    setState(() {
                                      _currency.text = currency.name;
                                    });
                                  },
                                  favorite: <String>['INR'],
                                  theme: CurrencyPickerThemeData(
                                    flagSize: 25,
                                    titleTextStyle: GoogleFonts.montserrat(
                                      fontSize: 18.spMin,
                                    ),
                                    subtitleTextStyle: GoogleFonts.montserrat(
                                      fontSize: 18.spMin,
                                    ),
                                    bottomSheetHeight: 500,
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF7BBF14),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {
                                if (_currencyValidate.currentState!
                                    .validate()) {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const CurvedNavigation();
                                  }));
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Get Started",
                                      style: buttonText(),
                                    ),
                                    const Icon(
                                      Icons.arrow_forward,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
