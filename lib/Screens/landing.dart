import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clonespiracy"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 7.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Text(
                    "Find Your Twin",
                    style: TextStyle(
                      fontSize: 21.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.green
                    ),
                    ),
                  Text(
                    "From Another Planet",
                    style: TextStyle(
                      fontSize: 23.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.green.shade700
                    ),
                    )
                  ]
                ),
              ),
            ),
            SizedBox(height: 5.h,),
            Padding(
              padding: EdgeInsets.only(left: 5.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Top Similarities",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, right: 2.w),
                child: Row(
                  spacing: 5.w,
                  children: [
                    CircleAvatar(
                      radius: 30.sp,
                      backgroundColor: Colors.blue,
                    ),
                    CircleAvatar(
                      radius: 30.sp,
                      backgroundColor: Colors.blue,
                    ),
                    CircleAvatar(
                      radius: 30.sp,
                      backgroundColor: Colors.blue,
                    ),
                    CircleAvatar(
                      radius: 30.sp,
                      backgroundColor: Colors.blue,
                    ),
                    CircleAvatar(
                      radius: 30.sp,
                      backgroundColor: Colors.blue,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4.w,
              children: [
                Container(
                  width: 40.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15.sp)
                  ),
                  child: Center(
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.white,
                      size: 30.sp,
                    )
                  ),
                ),
                Container(
                  width: 40.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15.sp)
                  ),
                  child: Center(
                    child: Icon(
                      Icons.image_rounded,
                      color: Colors.white,
                      size: 30.sp,
                    )
                  ),
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}