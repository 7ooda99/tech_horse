import 'package:flutter/material.dart';
import 'package:tech_horse/core/assets_manager.dart';
import 'package:tech_horse/core/color_manager.dart';
import 'package:tech_horse/core/styles_manager.dart';
import 'package:tech_horse/core/widgets/text_widget.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.yellowLight,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 49,
            ),
            Image.asset(
              AssetsManager.logo,
            ),
            CustomTextField(
              text: 'Email',
              textColor: ColorManager.primary,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              text: 'Password',
              textColor: ColorManager.primary,
            ),
            const SizedBox(
              height: 35,
            ),
            const CustomButton(
              text: "LOGIN",
              height: 50,
              width: 334,
              radius: 40,
            ),
          ],
        ),
      ),
    );
  }
}
