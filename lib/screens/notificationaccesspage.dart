import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationAccessPage extends StatefulWidget {
  const NotificationAccessPage({Key? key}) : super(key: key);

  @override
  State<NotificationAccessPage> createState() => _NotificationAccessPageState();
}

class _NotificationAccessPageState extends State<NotificationAccessPage> {
  bool isSwitch = false;

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
            size: 26
          ),
        ),
        title: const Text("Notification"),
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
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "To allow notification",
                  style: GoogleFonts.montserrat(
                    color: Colors.grey.shade500,
                    fontSize: 20.spMin,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Switch(
                    value: isSwitch,
                    activeColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        isSwitch = value;
                      });
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
