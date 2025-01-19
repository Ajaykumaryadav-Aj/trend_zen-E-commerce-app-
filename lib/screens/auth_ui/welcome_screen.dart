import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';
import 'package:trend_zen/controllers/google_sign_in_controller.dart';
import 'package:trend_zen/screens/auth_ui/sign_in_screen.dart';
import 'package:trend_zen/utils/app_constant.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  final GoogleSignInController _googleSignInController =
      Get.put(GoogleSignInController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Welcome to My App',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppConstant.appTextColor),
        ),
        centerTitle: true,
        backgroundColor: AppConstant.backgroundColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Lottie.asset('assets/images/splashicon.json'),
          ),
          const SizedBox(height: 30),
          const Text(
            'Happy Shopping',
            style: TextStyle(
                color: AppConstant.appTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          SizedBox(
            height: Get.height / 10,
          ),
          Material(
            elevation: 0,
            color: AppConstant.backgroundColor,
            child: Container(
              decoration: BoxDecoration(
                  color: AppConstant.appMaincolor,
                  borderRadius: BorderRadius.circular(12)),
              height: Get.height / 16,
              width: Get.height / 2.8,
              margin: const EdgeInsets.only(top: 20),
              child: TextButton.icon(
                style: const ButtonStyle(),
                onPressed: () {
                  _googleSignInController.signInWithGoogle();
                },
                icon: Image.asset(
                  'assets/images/google(1).png',
                ),
                label: const Text(
                  'Sign in with google',
                  style: TextStyle(
                    color: AppConstant.appTextColor,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Material(
              color: AppConstant.backgroundColor,
              child: Container(
                decoration: BoxDecoration(
                    color: AppConstant.appMaincolor,
                    borderRadius: BorderRadius.circular(12)),
                height: Get.height / 16,
                width: Get.height / 2.8,
                margin: const EdgeInsets.only(top: 20),
                child: TextButton.icon(
                  style: const ButtonStyle(),
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/gmail(1).png',
                  ),
                  label: const Text('Sign in with Gmail',
                      style: TextStyle(
                        color: AppConstant.appTextColor,
                      )),
                ),
              ))
        ],
      ),
    );
  }
}
