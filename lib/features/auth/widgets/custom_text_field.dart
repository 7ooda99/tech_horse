import 'package:flutter/material.dart';
import 'package:tech_horse/core/styles_manager.dart';

import '../../../core/color_manager.dart';
import '../../../core/widgets/text_widget.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.text,
    required this.textColor,
    super.key,
  });

  String text;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: TextWidget(
            text: text,
            textStyle: getMediumStyle(color: textColor)
                .copyWith(fontSize: 14, fontFamily: 'Roboto'),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SizedBox(
            height: 44,
            child: Material(
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
              elevation: 6,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: ColorManager.wight,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16),
                      ),
                      borderSide: BorderSide(color: ColorManager.primary)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                    borderSide: BorderSide(color: ColorManager.primary),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
