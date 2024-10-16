import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:lottie/lottie.dart';
import 'package:trend_zen/utils/app_constant.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppConstant.backgroundColor,
          title: const Text('sign In'),
        ),
        body: Column(
          children: [Lottie.asset('assets/images/splashicon.json'),
          Text('Sign')
          ],
        ),
      );
    });
  }
}
