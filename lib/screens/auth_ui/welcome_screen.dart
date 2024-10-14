import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';
import 'package:trend_zen/screens/auth_ui/splash_screen.dart';
import 'package:trend_zen/utils/app_constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Welcome My App'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Lottie.asset('assets/images/splashicon.json'),
          ),
          const Text(
            'Happy Shopping',
            style: TextStyle(color: Colors.amber),
          ),
          SizedBox(
            height: Get.height / 10,
          ),
          Material(
              child: Container(
            decoration: BoxDecoration(
                color: AppConstant.appMaincolor,
                borderRadius: BorderRadius.circular(12)),
            height: Get.height / 16,
            width: Get.height / 2.8,
            margin: EdgeInsets.only(top: 20),
            child: TextButton.icon(
              style: ButtonStyle(),
              onPressed: () {},
              icon: Image.asset(
                'assets/images/google(1).png',
              ),
              label: Text('Sign in with google',
                  style: TextStyle(
                    color: AppConstant.appTextColor,
                  )),
            ),
          )),
          SizedBox(height: 20),
          Material(
              child: Container(
            decoration: BoxDecoration(
                color: AppConstant.appMaincolor,
                borderRadius: BorderRadius.circular(12)),
            height: Get.height / 16,
            width: Get.height / 2.8,
            margin: EdgeInsets.only(top: 20),
            child: TextButton.icon(
              style: ButtonStyle(),
              onPressed: () {},
              icon: Image.asset(
                'assets/images/gmail(1).png',
              ),
              label: Text('Sign in with google',
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
