import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';
import 'package:trend_zen/utils/app_constant.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        backgroundColor: AppConstant.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppConstant.backgroundColor,
          title: const Text(
            'signIn',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: AppConstant.appTextColor),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Lottie.asset('assets/images/splashicon.json'),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: const Icon(Icons.visibility_off),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 14),
              alignment: Alignment.centerRight,
              child: const Text(
                'Forget Password?',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 207, 16, 2)),
              ),
            ),
            const SizedBox(height: 15),
            Material(
              elevation: 0,
              color: AppConstant.backgroundColor,
              child: Container(
                decoration: BoxDecoration(
                    color: AppConstant.appMaincolor,
                    borderRadius: BorderRadius.circular(18)),
                height: Get.height / 16,
                width: Get.width / 2.2,
                margin: const EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(
                      color: AppConstant.appTextColor,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.redAccent),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.redAccent),
                )
              ],
            )
          ],
        ),
      );
    });
  }
}
