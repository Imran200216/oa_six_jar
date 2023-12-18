import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../googlefonts.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(
              "assets/notransactionsvg.svg",
              height: 250.h,
              width: 250.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            "No Transactions yet received",
            style: textTextStyle(),
          ),
        ],
      ),
    );
  }
}
