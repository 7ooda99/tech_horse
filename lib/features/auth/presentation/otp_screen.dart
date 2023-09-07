import 'package:flutter/material.dart';
import 'package:tech_horse/core/color_manager.dart';
import 'package:tech_horse/core/font_manager.dart';
import 'package:tech_horse/core/styles_manager.dart';
import 'package:tech_horse/core/widgets/text_widget.dart';
import 'package:tech_horse/features/auth/widgets/custom_button.dart';

import '../../../core/assets_manager.dart';
import '../widgets/custom_otp_widget.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.yellowLight,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 26, bottom: 22),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextWidget(
                      text: 'OTP Verification',
                      textStyle: getSemiBoldStyle(color: ColorManager.primary)
                          .copyWith(
                        fontSize: FontSize.s30,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  AssetsManager.logo,
                ),
                const SizedBox(
                  height: 80,
                ),
                TextWidget(
                  text: 'We will send you one time password this email.',
                  textStyle: getRegularStyle(
                    color: ColorManager.primary,
                  ).copyWith(fontSize: FontSize.s15),
                ),
                const SizedBox(
                  height: 17,
                ),
                TextWidget(
                  text: '( barberadmin@gmail.com )',
                  textStyle: getSemiBoldStyle(
                    color: ColorManager.primary,
                  ).copyWith(fontSize: FontSize.s15),
                ),
                const SizedBox(
                  height: 45,
                ),
                const CustomOtpWidget(),
                const SizedBox(
                  height: 30,
                ),
                const CustomButton(
                  text: 'Submit',
                  height: 43,
                  width: 229,
                  radius: 15,
                  fontSize: 19,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
