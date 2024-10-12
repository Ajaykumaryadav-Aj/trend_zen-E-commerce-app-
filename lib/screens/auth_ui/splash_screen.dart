import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:trend_zen/screens/user_panel/main_screen.dart';
import 'package:trend_zen/utils/app_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Get.offAll(const MainScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.appMaincolor,
      appBar: AppBar(
        backgroundColor: AppConstant.appMaincolor,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(child: Lottie.asset('assets/images/icon.json')),
            Text(
              'Trend Zen',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
