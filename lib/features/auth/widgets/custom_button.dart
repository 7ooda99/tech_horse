import 'package:flutter/material.dart';

import '../../../core/color_manager.dart';
import '../../../core/styles_manager.dart';
import '../../../core/widgets/text_widget.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.height,
    required this.width,
    required this.radius,
    this.fontSize = 16,
  });

  final String text;
  final double height;
  final double width;
  final double radius;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: ColorManager.primary,
          border: Border.all(color: ColorManager.yellow)),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors
              .transparent, // Set the button's background color to be transparent

          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(radius), // Apply the same border radius
          ),
        ),
        child: TextWidget(
          text: text,
          textStyle: getMediumStyle(color: ColorManager.yellow)
              .copyWith(fontSize: fontSize),
        ),
      ),
    );
  }
}
