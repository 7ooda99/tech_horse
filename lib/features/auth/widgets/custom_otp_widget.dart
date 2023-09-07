import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/color_manager.dart';

class CustomOtpWidget extends StatelessWidget {
  const CustomOtpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      animationType: AnimationType.fade,
      enableActiveFill: true,
      mainAxisAlignment: MainAxisAlignment.center,
      cursorColor: ColorManager.gray,
      keyboardType: TextInputType.number,
      pinTheme: PinTheme(
        // activeColor: ColorManager.primary,
        inactiveColor: ColorManager.gray,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        fieldHeight: 50,
        fieldWidth: 50,
        activeFillColor: ColorManager.wight,
        inactiveFillColor: ColorManager.wight,
        activeColor: ColorManager.gray,
        fieldOuterPadding: const EdgeInsets.symmetric(horizontal: 10),
        selectedColor: ColorManager.gray,
        selectedFillColor: ColorManager.wight,
      ),
      onChanged: (value) {
        print(value);
      },
    );
  }
}
