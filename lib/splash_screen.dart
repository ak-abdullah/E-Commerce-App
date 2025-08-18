import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart'; // ✅ import GetX

// import your HomeScreen (replace with actual file path)
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Delay 3 seconds, then navigate
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => HomeScreen());
      // or Get.offAll(() => const HomeScreen()); if you don’t want back navigation
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Center(child: SvgPicture.asset('assets/Logo.svg'))),
            Padding(
              padding: EdgeInsets.only(bottom: 33.61.h),
              child: SvgPicture.asset('assets/Branding.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
